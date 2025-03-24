import 'package:flutter/material.dart';

class DoctorScreenAppbar extends StatelessWidget {
  const DoctorScreenAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Icon(Icons.arrow_back_ios_new_rounded),
      title: Row(),
    );
  }
}
