import 'package:flutter/material.dart';
import 'package:health_app/config/app_colors.dart';
import 'package:health_app/config/customtextstyle.dart';

class AppbarCommon extends StatelessWidget {
  final String title;
  final VoidCallback ontap;
  const AppbarCommon({super.key, required this.title, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.white,
      leading: GestureDetector(
        onTap: () {
          ontap();
        },
        child: Icon(
          Icons.arrow_back_ios_new,
          color: AppColors.bluemain,
          size: 22,
        ),
      ),
      title: Text(
        title,
        style: CustomTextStyle.size24blue,
      ),
      centerTitle: true,
    );
  }
}
