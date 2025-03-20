import 'package:flutter/material.dart';
import 'package:health_app/config/app_colors.dart';

class CircularIcon extends StatelessWidget {
  final String iconAssetPath;
  const CircularIcon({super.key, required this.iconAssetPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(shape: BoxShape.circle, color: AppColors.grey),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Image.asset(
          iconAssetPath,
        ),
      ),
    );
  }
}
