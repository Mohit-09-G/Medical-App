import 'package:flutter/material.dart';
import 'package:health_app/config/app_colors.dart';
import 'package:health_app/config/app_images.dart';
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
        padding: const EdgeInsets.only(top: 7, bottom: 7, left: 3, right: 10),
        child: Row(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  WhiteBagroundContainer(
                    iconAssetPath: AppImages.filter,
                  ),
                  Image.asset(AppImages.search),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
