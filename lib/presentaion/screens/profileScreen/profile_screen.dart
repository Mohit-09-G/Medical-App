import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/config/app_colors.dart';
import 'package:health_app/config/app_images.dart';
import 'package:health_app/config/app_string.dart';
import 'package:health_app/config/customtextstyle.dart';
import 'package:health_app/presentaion/controller/profilescreen/profile_screen_controller.dart';

import 'package:health_app/presentaion/screens/profileScreen/widgets/circular_blue_baground.dart';
import 'package:health_app/presentaion/screens/profileScreen/widgets/profile_app_bar.dart';
import 'package:health_app/presentaion/screens/profileScreen/widgets/profile_item_names.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  ProfileScreenController controller = Get.put(ProfileScreenController());

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
                  Stack(
                    alignment: Alignment(1.0, 0.9),
                    children: [
                      Image.asset(
                        AppImages.ratingDocimage,
                        height: 130,
                      ),
                      Positioned(
                          child: CircularBlueBackground(
                              padding: EdgeInsets.all(6),
                              name: Image.asset(
                                AppImages.editIcon,
                                height: 25,
                              )))
                    ],
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
                    images: AppImages.profileIcon,
                    ontap: () {
                      controller.navigateToprofiledata();
                    },
                    name: AppString.profiletxt,
                  ),
                  ProfileItemNames(
                    images: AppImages.heart,
                    ontap: () {},
                    name: AppString.favorite,
                  ),
                  ProfileItemNames(
                    images: AppImages.walletIcon,
                    ontap: () {},
                    name: AppString.paymentMethod,
                  ),
                  ProfileItemNames(
                    images: AppImages.privacyIcon,
                    ontap: () {},
                    name: AppString.privacyPolicy,
                  ),
                  ProfileItemNames(
                    images: AppImages.settingIcon,
                    ontap: () {},
                    name: AppString.settings,
                  ),
                  ProfileItemNames(
                    images: AppImages.helpIcon,
                    ontap: () {},
                    name: AppString.help,
                  ),
                  ProfileItemNames(
                    images: AppImages.logouticon,
                    ontap: () {
                      controller.logout();
                    },
                    name: AppString.logout,
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
