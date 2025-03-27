import 'package:flutter/material.dart';
import 'package:health_app/config/app_colors.dart';
import 'package:health_app/config/app_images.dart';
import 'package:health_app/config/app_string.dart';
import 'package:health_app/config/customtextstyle.dart';
import 'package:health_app/presentaion/screens/profileScreen/widgets/profile_app_bar.dart';
import 'package:health_app/presentaion/screens/profileScreen/widgets/profile_item_names.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      child: SafeArea(
          child: Scaffold(
        backgroundColor: AppColors.white,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(40),
            child: ProfileAppBar(barname: "Profile")),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
          child: Column(
            spacing: 35,
            children: [
              Column(
                spacing: 5,
                children: [
                  Image.asset(
                    AppImages.ratingDocimage,
                    height: 130,
                  ),
                  Text(
                    AppString.profilename,
                    style: CustomTextStyle.size24blackw600,
                  )
                ],
              ),
              Column(
                spacing: 15,
                children: [
                  ProfileItemNames(
                    name: 'Profile',
                  ),
                  ProfileItemNames(
                    name: 'Favorite',
                  ),
                  ProfileItemNames(
                    name: 'Payment Method',
                  ),
                  ProfileItemNames(
                    name: 'Privacy Policy',
                  ),
                  ProfileItemNames(
                    name: 'Settings',
                  ),
                  ProfileItemNames(
                    name: 'Help',
                  ),
                  ProfileItemNames(
                    name: 'Logout',
                  ),
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}
