import 'package:flutter/material.dart';
import 'package:health_app/config/app_colors.dart';

class DoctorIconBack extends StatelessWidget {
  final String iconAssetPath;
  final VoidCallback? ontap;
  const DoctorIconBack({super.key, required this.iconAssetPath, this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        decoration:
            BoxDecoration(shape: BoxShape.circle, color: AppColors.grey),
        child: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Image.asset(
            iconAssetPath,
            height: 13,
          ),
        ),
      ),
    );
  }
}
