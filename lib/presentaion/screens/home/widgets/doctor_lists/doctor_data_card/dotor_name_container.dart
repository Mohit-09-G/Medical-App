import 'package:flutter/material.dart';
import 'package:health_app/config/app_colors.dart';

import 'package:health_app/config/customtextstyle.dart';

class DotorNameContainer extends StatelessWidget {
  final String doctorName;
  final String speciality;
  const DotorNameContainer(
      {super.key, required this.doctorName, required this.speciality});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, left: 1, right: 10),
      decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(13),
          shape: BoxShape.rectangle),
      child: Padding(
        padding: const EdgeInsets.only(top: 5, left: 15, bottom: 5),
        child: Column(
          children: [
            Row(
              children: [
                Row(
                  children: [
                    Text(
                      doctorName,
                      style: CustomTextStyle.size14blue,
                    )
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  speciality,
                  style: CustomTextStyle.size12black,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
