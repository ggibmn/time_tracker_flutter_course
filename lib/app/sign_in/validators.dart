abstract class StringValidator{
  bool isValid(String value);
}
class NotEmptyStringValidator implements StringValidator{
  @override
  bool isValid(String value) {
    return value.isNotEmpty;
  }
}
class EmailAndPasswordValidators{
  final StringValidator emailValidator = NotEmptyStringValidator();
  final StringValidator passwordValidator = NotEmptyStringValidator();
  final String invalidEmailErrorText = 'Email can\'t be empty';
  final String invalidPasswordErrorText = 'Password can\'t be empty';
}