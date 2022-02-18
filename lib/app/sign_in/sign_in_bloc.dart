import 'dart:async';

import 'package:time_tracker_flutter_course/services/auth.dart';

class SignInBloc {
  final AuthBase auth;

  final StreamController<bool> _isLoadingController = StreamController<bool>();

  SignInBloc(this.auth);

  Stream<bool> get isLoadingStream => _isLoadingController.stream;

  void dispose() {
    _isLoadingController.close();
  }

  void setIsLoading(bool isLoading) => _isLoadingController.add(isLoading);
}
