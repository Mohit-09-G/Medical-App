import 'package:flutter/material.dart';
import 'package:health_app/config/app_colors.dart';

import 'package:health_app/config/customtextstyle.dart';

class IconWithText extends StatelessWidget {
  final String text;
  final String icon;

  const IconWithText({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.white, borderRadius: BorderRadius.circular(13)),
      child: Padding(
        padding: const EdgeInsets.only(left: 3, right: 20, top: 3, bottom: 2.5),
        child: Row(
          spacing: 2,
          children: [
            Image.asset(icon),
            Text(
              text,
              style: CustomTextStyle.size12blue,
            ),
          ],
        ),
      ),
    );
  }
}
