import 'package:flutter/material.dart';
import 'package:health_app/config/app_colors.dart';

class WhiteBagroundContainer extends StatelessWidget {
  final String iconAssetPath;
  const WhiteBagroundContainer({super.key, required this.iconAssetPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(shape: BoxShape.circle, color: AppColors.white),
      child: Padding(
        padding: const EdgeInsets.all(7),
        child: Image.asset(
          iconAssetPath,
        ),
      ),
    );
  }
}
