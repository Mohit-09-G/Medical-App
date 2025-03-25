import 'package:flutter/material.dart';
import 'package:health_app/config/app_colors.dart';

class WhiteBagroundContainer extends StatelessWidget {
  final String iconAssetPath;
  final Color? colors;
  final double? hight;
  const WhiteBagroundContainer(
      {super.key, required this.iconAssetPath, this.colors, this.hight});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(shape: BoxShape.circle, color: AppColors.white),
      child: Padding(
        padding: const EdgeInsets.all(7),
        child: Image.asset(
          height: hight,
          color: colors,
          iconAssetPath,
        ),
      ),
    );
  }
}
