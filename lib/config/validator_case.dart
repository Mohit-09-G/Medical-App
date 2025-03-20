import 'package:intl/intl.dart';

class Validators {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter an email address';
    }

    final emailRegex =
        RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');

    if (!emailRegex.hasMatch(value)) {
      return 'Please enter a valid email address';
    }

    if (value.length > 254) {
      return 'Email address is too long';
    }

    final parts = value.split('@');
    if (parts[0].length > 64) {
      return 'Local part of email is too long';
    }

    if (parts[1].length > 255) {
      return 'Domain part of email is too long';
    }

    if (value.contains('..')) {
      return 'Email cannot contain two consecutive dots';
    }

    if (value.startsWith('.') || value.endsWith('.')) {
      return 'Email cannot start or end with a dot';
    }

    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a password';
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters long';
    }
    return null;
  }

  static String? validateMobile(String? value) {
    if (value == null || value.isEmpty) {
      return 'Mobile number cannot be empty';
    }
    final regex = RegExp(r'^\+?[0-9]{10,15}$');
    if (!regex.hasMatch(value)) {
      return 'Please enter a valid mobile number';
    }
    return null;
  }

  static String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Name cannot be empty';
    }
    final regex = RegExp(r'^[a-zA-Z\s]+$');
    if (!regex.hasMatch(value)) {
      return 'Name should only contain alphabets and spaces';
    }
    return null;
  }

  static String? validateDOB(String? value) {
    if (value == null || value.isEmpty) {
      return 'Date of Birth cannot be empty';
    }

    final format = DateFormat('dd/MM/yyyy');
    try {
      final parsedDate = format.parseStrict(value);
      final today = DateTime.now();
      int age = today.year - parsedDate.year;

      if (today.month < parsedDate.month ||
          (today.month == parsedDate.month && today.day < parsedDate.day)) {
        age--;
      }

      if (age < 18) {
        return 'You must be at least 18 years old';
      }

      return null;
    } catch (e) {
      return 'Please enter a valid date in dd/MM/yyyy format';
    }
  }
}
