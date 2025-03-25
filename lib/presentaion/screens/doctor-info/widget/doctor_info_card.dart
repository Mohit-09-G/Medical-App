import 'package:flutter/material.dart';
import 'package:health_app/config/app_colors.dart';
import 'package:health_app/config/app_images.dart';
import 'package:health_app/config/app_string.dart';

import 'package:health_app/presentaion/screens/doctor-info/widget/blue_baground.dart';
import 'package:health_app/presentaion/screens/doctor-info/widget/blue_baground_icon.dart';

class DoctorInfoCard extends StatelessWidget {
  const DoctorInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.grey,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(17)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(flex: 8, child: Image.asset(AppImages.docInfoCard)),
                Expanded(
                  flex: 6,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: BlueBagroundIcon(
                              image: AppImages.calenderIcon,
                              name2: " ",
                              name: AppString.focus,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: BlueBaground(
                              name: AppString.docFocus,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
