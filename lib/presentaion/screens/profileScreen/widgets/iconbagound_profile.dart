import 'package:flutter/material.dart';
import 'package:health_app/config/app_colors.dart';

class IconbagoundProfile extends StatelessWidget {
  final String iconAssetPath;
  final VoidCallback? ontap;

  const IconbagoundProfile({
    super.key,
    required this.iconAssetPath,
    this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.grey,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Image.asset(
              iconAssetPath,
              height: 20,
              width: 20,
            ),
          ),
        ),
      ),
    );
  }
}
