import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final RxString emailError = RxString('');
}
