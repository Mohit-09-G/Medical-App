import 'package:flutter/material.dart';
import 'package:health_app/config/app_colors.dart';
import 'package:health_app/config/app_images.dart';
import 'package:health_app/config/customtextstyle.dart';
import 'package:health_app/presentaion/screens/doctorscreens/doctor_screen.dart';
import 'package:health_app/presentaion/screens/home/widgets/white_baground_container.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 13, right: 13),
      decoration: BoxDecoration(
          color: AppColors.grey,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(23)),
      child: Padding(
        padding: const EdgeInsets.only(left: 2, right: 5),
        child: Row(
          spacing: 4,
          children: [
            WhiteBagroundContainer(
              iconAssetPath: AppImages.filter,
            ),
            Expanded(
              child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                  style: CustomTextStyle.size12black),
            ),
            Image.asset(AppImages.search),
          ],
        ),
      ),
    );
  }
}
