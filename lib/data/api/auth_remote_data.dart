import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:health_app/data/models/usermodel.dart';

abstract class AuthRemoteDataResource {
  Future<UserCredential> createAccount(String userame, String password,
      String name, String? date, String? mobile);
  Future<Map<String, dynamic>> signInWithEmailAndPassword(
      String username, String password);
}

class AuthRemoteDataSOurceImpl implements AuthRemoteDataResource {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  @override
  Future<UserCredential> createAccount(String userame, String password,
      String name, String? date, String? mobile) async {
    try {
      UserCredential userCredential = await _firebaseAuth
          .createUserWithEmailAndPassword(email: userame, password: password);
      await userCredential.user?.updateDisplayName(name);

      await _storeUserData(userCredential.user!, mobile, date, name);

      return userCredential;
    } catch (e) {
      throw Exception('Failed to create account: ${e.toString()}');
    }
  }

  @override
  Future<Map<String, dynamic>> signInWithEmailAndPassword(
      String username, String password) async {
    try {
      final UserCredential userCredential = await _firebaseAuth
          .signInWithEmailAndPassword(email: username, password: password);

      final User? user = userCredential.user;
      if (user != null) {
        Map<String, dynamic> userData = {
          "uid": user.uid,
          "email": user.email,
        };
        return {"status": "success", "user": user, "userData": userData};
      } else {
        return {"status": "error", "message": "Failed to sign in."};
      }
    } catch (e) {
      return {"status": "error", "message": e.toString()};
    }
  }

  Future<void> _storeUserData(
      User user, String? mobile, String? date, String name) async {
    try {
      await _firebaseFirestore.collection('user').doc(user.uid).set(
            UserModel(
                    uid: user.uid,
                    email: user.email ?? '',
                    name: name,
                    mobile: mobile,
                    date: date)
                .toMap(),
          );
    } catch (e) {
      print('Error storing user data: ${e.toString()}');
    }
  }
}
