import 'package:flutter/material.dart';
import 'package:health_app/config/app_colors.dart';
import 'package:health_app/config/app_images.dart';
import 'package:health_app/config/app_string.dart';
import 'package:health_app/config/customtextstyle.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bluemain,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Image.asset(AppImages.logo)],
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                AppString.appname,
                style: CustomTextStyle.size48white,
              ),
              Text(AppString.appname1, style: CustomTextStyle.size48hwhite),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            AppString.linesplash,
            style: CustomTextStyle.size15white,
          )
        ],
      ),
    );
  }
}
