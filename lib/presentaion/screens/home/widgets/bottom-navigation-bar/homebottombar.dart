import 'package:flutter/material.dart';
import 'package:health_app/config/app_colors.dart';

class Homebottombar extends StatefulWidget {
  const Homebottombar({super.key});

  @override
  State<Homebottombar> createState() => _HomebottombarState();
}

class _HomebottombarState extends State<Homebottombar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: AppColors.bluemain),
      child: Text("55555555"),
    );
  }
}
