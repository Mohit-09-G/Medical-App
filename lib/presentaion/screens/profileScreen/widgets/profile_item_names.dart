import 'package:flutter/material.dart';
import 'package:health_app/config/app_colors.dart';

import 'package:health_app/config/customtextstyle.dart';

import 'package:health_app/presentaion/screens/profileScreen/widgets/iconbagound_profile.dart';

class ProfileItemNames extends StatelessWidget {
  final VoidCallback ontap;
  final String name;
  final String images;
  const ProfileItemNames(
      {super.key,
      required this.name,
      required this.ontap,
      required this.images});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            spacing: 10,
            children: [
              IconbagoundProfile(
                iconAssetPath: images,
              ),
              Text(
                name,
                style: CustomTextStyle.size20black,
              )
            ],
          ),
          Icon(
            Icons.arrow_forward_ios_rounded,
            size: 20,
            color: AppColors.grey,
          )
        ],
      ),
    );
  }
}
