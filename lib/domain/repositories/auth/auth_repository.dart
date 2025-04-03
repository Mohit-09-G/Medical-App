import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepository {
  Future<User?> createAccount(String username, String password, String name,
      String? mobile, String? date);
  Future<Map> signInWithEmailAndPassword(String username, String password);
}
