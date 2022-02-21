import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:time_tracker_flutter_course/services/auth.dart';

class SignInBloc {
  final AuthBase auth;

  final StreamController<bool> _isLoadingController = StreamController<bool>();

  SignInBloc({required this.auth});

  Stream<bool> get isLoadingStream => _isLoadingController.stream;

  void dispose() {
    _isLoadingController.close();
  }

  void _setIsLoading(bool isLoading) => _isLoadingController.add(isLoading);

  Future<User?> _signIn(Future<User?> signInMethod) async {
    try {
      _setIsLoading(true);
      return await signInMethod;
    } catch (e) {
      rethrow;
    } finally {
      _setIsLoading(false);
    }
  }

  Future<User?> signInAnonymously() async => _signIn(auth.signInAnonymously());

  Future<User?> signInWithGoogle() async => _signIn(auth.signInWithGoogle());

  Future<User?> signInWithFacebook() async =>
      _signIn(auth.signInWithFacebook());
}
