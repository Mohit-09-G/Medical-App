import 'package:flutter/material.dart';
import 'package:get/get.dart'; // To use GetX for controller management
import 'package:health_app/config/app_colors.dart';
import 'package:health_app/presentaion/controller/mainscreen/mainscreen_controller.dart';

class Homebottombar extends StatelessWidget {
  const Homebottombar({super.key});

  @override
  Widget build(BuildContext context) {
    final MainscreenController controller = Get.find();

    return BottomAppBar(
      child: BottomNavigationBar(
        currentIndex: controller.selectedIndex.value,
        onTap: controller.updateIndex, // Update the index on tap
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              color: AppColors.black,
              Icons.home,
              size: 10,
            ),
            label: 'Home', // Add label for Home
          ),
          BottomNavigationBarItem(
            icon: Icon(
              color: AppColors.black,
              Icons.baby_changing_station,
              size: 10,
            ),
            label: 'Messages', // Add label for Messages
          ),
          BottomNavigationBarItem(
            icon: Icon(
              color: AppColors.black,
              Icons.person,
              size: 10,
            ),
            label: 'Profile', // Add label for Profile
          ),
          BottomNavigationBarItem(
            icon: Icon(
              color: AppColors.black,
              Icons.calendar_today,
              size: 10,
            ),
            label: 'Calendar', // Add label for Calendar
          ),
        ],
      ),
    );
  }
}
