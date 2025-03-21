import 'package:flutter/material.dart';
import 'package:health_app/config/app_colors.dart';
import 'package:health_app/config/app_images.dart';
import 'package:health_app/config/app_string.dart';
import 'package:health_app/config/customtextstyle.dart';
import 'package:health_app/presentaion/screens/home/widgets/topfeatures/circular_baground.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.white,
      title: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 2,
              child: Row(
                spacing: 15,
                children: [
                  Image.asset(AppImages.homeappbarIcon),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(AppString.appbarNamegreet,
                          style: CustomTextStyle.size12blue),
                      Text(AppString.appbarName, style: CustomTextStyle.size14),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                spacing: 5,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircularBaground(
                    iconAssetPath: AppImages.bellIcon,
                  ),
                  CircularBaground(iconAssetPath: AppImages.settingIcons)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
