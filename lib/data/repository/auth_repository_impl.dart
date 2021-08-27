import 'package:daily_page/data/exception/auth_exception.dart';
import 'package:daily_page/data/provider/firebase_auth/firebase_auth_provider.dart';
import 'package:daily_page/data/repository/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase;
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final authRepositoryProvider =
    Provider<AuthRepository>((ref) => AuthRepositoryImpl(ref.read));

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl(this._reader);

  final Reader _reader;

  late final firebase.FirebaseAuth _firebaseAuth =
      _reader(firebaseAuthProvider);

  @override
  Future<firebase.User?> signUp(
      {required String email, required String password}) async {
    try {
      final credential = await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      final currentUser = firebase.FirebaseAuth.instance.currentUser;
      assert(credential.user?.uid == currentUser?.uid);
      return credential.user;
    } on firebase.FirebaseAuthException catch (e) {
      throw AuthException(_getExceptionMessage(e.code));
    }
  }

  @override
  Future<firebase.User?> signIn(
      {required String email, required String password}) async {
    try {
      final credential = await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      final currentUser = firebase.FirebaseAuth.instance.currentUser;
      assert(credential.user?.uid == currentUser?.uid);
      return credential.user;
    } on firebase.FirebaseAuthException catch (e) {
      throw AuthException(_getExceptionMessage(e.code));
    }
  }

  @override
  Future<void> signOut() {
    return _firebaseAuth.signOut().catchError((error) {
      debugPrint(error.toString());
      throw error;
    });
  }

  String _getExceptionMessage(String exceptionCode) {
    switch (exceptionCode) {
      case 'account-exists-with-different-credential':
      case 'email-already-in-use':
        return 'メールアドレスは登録済みです。ログインして下さい。';
      case 'wrong-password':
        return 'メールアドレスとパスワードの組み合わせが不正です。';
      case 'user-not-found':
        return 'メールアドレスは登録されていません。';
      case 'user-disabled':
        return 'アカウントが凍結されています。';
      case 'too-many-requests':
        return 'しばらく時間を置いて再度実行して下さい。';
      case 'invalid-email':
        return 'メールアドレスのフォーマットが不正です。';
      case 'weak-password':
        return 'パスワードを6文字以上で入力して下さい';
      default:
        return 'エラーが発生しました。';
    }
  }
}
