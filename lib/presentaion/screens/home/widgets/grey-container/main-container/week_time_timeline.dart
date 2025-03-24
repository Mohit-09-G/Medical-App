import 'package:flutter/material.dart';
import 'package:health_app/config/app_colors.dart';

import 'package:health_app/config/customtextstyle.dart';

class DateListItem extends StatelessWidget {
  final String date;
  final String dayNum;
  const DateListItem({super.key, required this.date, required this.dayNum});

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
        padding: const EdgeInsets.only(top: 7, bottom: 5, left: 8, right: 8),
        child: Column(
          children: [
            Text(
              dayNum,
              style: CustomTextStyle.size24black,
            ),
            Text(
              date,
              style: CustomTextStyle.size12black,
            ),
          ],
        ),
      ),
    );
  }
}
