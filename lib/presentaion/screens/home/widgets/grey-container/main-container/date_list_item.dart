import 'package:flutter/material.dart';
import 'package:health_app/config/app_colors.dart';
import 'package:health_app/config/app_string.dart';
import 'package:health_app/config/customtextstyle.dart';

class DateListItem extends StatelessWidget {
  const DateListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 20, left: 8, right: 8),
        child: Column(
          children: [
            Text(
              AppString.daynum,
              style: CustomTextStyle.size24black,
            ),
            Text(
              AppString.dayname,
              style: CustomTextStyle.size12black,
            ),
          ],
        ),
      ),
    );
  }
}
