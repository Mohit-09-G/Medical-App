import 'package:flutter/material.dart';
import 'package:health_app/config/app_colors.dart';

class CircularIcon extends StatelessWidget {
  final IconData icons;
  const CircularIcon({super.key, required this.icons});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(shape: BoxShape.circle, color: AppColors.grey),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Icon(
          icons,
          size: 22,
          color: AppColors.bluemain,
        ),
      ),
    );
  }
}
