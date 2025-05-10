import 'package:health_app/domain/repositories/auth/auth_repository.dart';

class DoLoginWithEmailandpassword {
  final AuthRepository repository;

  DoLoginWithEmailandpassword({required this.repository});

  Future<Map<String, dynamic>> execute(String username, String password) async {
    final result =
        await repository.signInWithEmailAndPassword(username, password);
    return Map<String, dynamic>.from(result);
  }
}
