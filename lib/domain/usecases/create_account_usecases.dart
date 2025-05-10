import 'package:firebase_auth/firebase_auth.dart';
import 'package:health_app/domain/repositories/auth/auth_repository.dart';

class CreateAccountUsecases {
  final AuthRepository repository;

  CreateAccountUsecases({required this.repository});

  Future<User?> execute(String userame, String password, String name,
      String? mobile, String? date) {
    return repository.createAccount(userame, password, name, date, mobile);
  }
}
