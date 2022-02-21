import 'package:time_tracker_flutter_course/app/sign_in/email_sign_in_form_stateful.dart';

enum EmailSignInFormType { signIn, register }

class EmailSignInModel {
  EmailSignInModel(
      {this.email = '',
      this.password = '',
      this.formType = EmailSignInFormType.signIn,
      this.isLoading = false,
      this.submitted = false});

  final String email;
  final String password;
  final EmailSignInFormType formType;
  final bool isLoading;
  final bool submitted;
}
