import 'package:flutter/material.dart';
import 'package:health_app/config/app_colors.dart';
import 'package:health_app/config/app_images.dart';

import 'package:health_app/config/app_string.dart';
import 'package:health_app/config/customtextstyle.dart';
import 'package:health_app/presentaion/screens/home/widgets/grey-container/shedule-data-container/icons_baground.dart';

class ActualSheduleContainer extends StatelessWidget {
  const ActualSheduleContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: AppColors.grey,
          borderRadius: BorderRadius.circular(13)),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          children: [
            Row(
              spacing: 30,
              children: [
                Text(
                  AppString.drName,
                  style: CustomTextStyle.size12blue,
                ),
                Row(
                  spacing: 3,
                  children: [
                    IconsBaground(iconAssetPath: AppImages.tick),
                    IconsBaground(iconAssetPath: AppImages.cross)
                  ],
                )
              ],
            ),
            Row(
              children: [
                Text(
                  'Treatment and prevention of skin \n and photodermatitis.',
                  style: CustomTextStyle.size12black,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
