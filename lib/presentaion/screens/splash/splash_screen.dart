import 'package:flutter/material.dart';
import 'package:health_app/config/app_colors.dart';
import 'package:health_app/config/app_images.dart';
import 'package:health_app/config/app_string.dart';

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
                style: TextStyle(
                    height: 1,
                    fontFamily: 'LeagueSpartan',
                    color: AppColors.white,
                    letterSpacing: 0,
                    fontWeight: FontWeight.w100,
                    fontSize: 48),
              ),
              Text(
                AppString.appname1,
                style: TextStyle(
                    height: 0.6,
                    fontWeight: FontWeight.w100,
                    fontFamily: 'LeagueSpartan',
                    color: AppColors.white,
                    letterSpacing: 0,
                    fontSize: 48),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            AppString.linesplash,
            style: TextStyle(
                fontFamily: 'LeagueSpartan',
                color: AppColors.white,
                letterSpacing: 0,
                fontWeight: FontWeight.w600,
                fontSize: 15),
          )
        ],
      ),
    );
  }
}
