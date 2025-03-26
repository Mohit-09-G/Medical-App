import 'package:flutter/material.dart';
import 'package:health_app/config/app_colors.dart';
import 'package:health_app/config/app_images.dart';
import 'package:health_app/config/customtextstyle.dart';
import 'package:health_app/presentaion/screens/doctorscreens/widget/doctor_icon_back.dart';

class DoctorScreenAppbar extends StatelessWidget {
  final String apbarName;

  const DoctorScreenAppbar({super.key, required this.apbarName});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      title: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: AppColors.bluemain,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  apbarName,
                  style: CustomTextStyle.size24blue,
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 5,
              children: [
                DoctorIconBack(iconAssetPath: AppImages.search),
                DoctorIconBack(iconAssetPath: AppImages.filter),
              ],
            ),
          )
        ],
      ),
    );
  }
}
