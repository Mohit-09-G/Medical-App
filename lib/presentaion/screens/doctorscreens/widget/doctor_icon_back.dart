import 'package:flutter/material.dart';
import 'package:health_app/config/app_colors.dart';

class DoctorIconBack extends StatelessWidget {
  final String iconAssetPath;
  const DoctorIconBack({super.key, required this.iconAssetPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(shape: BoxShape.circle, color: AppColors.grey),
      child: Padding(
        padding: const EdgeInsets.all(7.0),
        child: Image.asset(
          iconAssetPath,
          height: 13,
        ),
      ),
    );
  }
}
