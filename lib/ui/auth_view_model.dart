import 'package:daily_page/data/repository/auth_repository_impl.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final authViewModelProvider =
    ChangeNotifierProvider((ref) => AuthViewModel(ref.read));

class AuthViewModel extends ChangeNotifier {
  AuthViewModel(this._reader);

  final Reader _reader;

  late final _repository = _reader(authRepositoryProvider);

  Future<User?> signUp({required String email, required String password}) {
    return _repository.signUp(email: email, password: password);
  }

  Future<User?> signIn({required String email, required String password}) {
    return _repository.signIn(email: email, password: password);
  }

  Future<void> signOut() {
    return _repository.signOut();
  }
}
