import 'package:firebase_auth/firebase_auth.dart';
import 'package:health_app/data/api/auth_remote_data.dart';
import 'package:health_app/domain/repositories/auth/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSOurceImpl remotedatasource;

  AuthRepositoryImpl({required this.remotedatasource});

  @override
  Future<User?> createAccount(String username, String password) async {
    try {
      final userCredential =
          await remotedatasource.createAccount(username, password);
      return userCredential.user;
    } catch (e) {
      throw Exception('Repository: Failed to create account: ${e.toString()}');
    }
  }

  @override
  Future<Map> signInWithEmailAndPassword(
      String username, String password) async {
    try {
      final result =
          await remotedatasource.signInWithEmailAndPassword(username, password);
      if (result['status'] == 'success') {
        return {'success': true, 'user': result['user']};
      } else {
        return {'success': false, 'message': 'Failed to sign in'};
      }
    } catch (e) {
      if (e is FirebaseAuthException) {
        return {
          'success': false,
          'message': 'Authentication failed: ${e.message}'
        };
      }
      return {
        'success': false,
        'message': 'Failed to sign in: ${e.toString()}'
      };
    }
  }
}
