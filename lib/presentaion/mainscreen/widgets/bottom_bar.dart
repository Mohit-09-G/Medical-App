import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/config/app_colors.dart';
import 'package:health_app/config/app_images.dart';

import 'package:health_app/presentaion/controller/mainscreen/mainscreen_controller.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    final MainscreenController controller = Get.find();

    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        shape: BoxShape.rectangle,
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 15, bottom: 20, left: 30, right: 30),
        child: Container(
          margin: EdgeInsets.only(left: 8, right: 8),
          decoration: BoxDecoration(
            color: AppColors.bluemain,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(24),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildIconButton(AppImages.homeIcon, 0, controller),
              _buildIconButton(AppImages.messageIcon, 1, controller),
              _buildIconButton(AppImages.persoIcon, 2, controller),
              _buildIconButton(AppImages.calenderIcon, 3, controller),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildIconButton(
      String iconPath, int index, MainscreenController controller) {
    return Obx(() {
      bool isSelected = controller.selectedIndex.value == index;
      return IconButton(
        onPressed: () {
          controller.updateIndex(index);
        },
        icon: Image.asset(
          iconPath,
          width: 30,
          height: 30,
          color: isSelected ? AppColors.focucIcon : AppColors.white,
        ),
      );
    });
  }
}
