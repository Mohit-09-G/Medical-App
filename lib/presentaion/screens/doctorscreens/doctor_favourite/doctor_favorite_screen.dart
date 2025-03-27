import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/config/app_colors.dart';
import 'package:health_app/config/customtextstyle.dart';
import 'package:health_app/presentaion/controller/doctor_favourite/doctor_favourite_controller.dart';
import 'package:health_app/presentaion/screens/doctor-info/widget/blue_baground.dart';

import 'package:health_app/presentaion/screens/doctorscreens/doctor_favourite/widgets/doctor_favourite_screen_buttons.dart';
import 'package:health_app/presentaion/screens/doctorscreens/widget/doctor_screen_appbar.dart';
import 'package:health_app/presentaion/screens/doctorscreens/widget/filter_setting_row.dart';

class DoctorFavoriteScreen extends StatefulWidget {
  const DoctorFavoriteScreen({super.key});

  @override
  State<DoctorFavoriteScreen> createState() => _DoctorFavoriteScreenState();
}

class _DoctorFavoriteScreenState extends State<DoctorFavoriteScreen> {
  final DoctorFavouriteController doctorFavouriteController =
      Get.put(DoctorFavouriteController());
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.white,
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(40), child: SizedBox.shrink()),
          body: Column(
            children: [
              DoctorScreenAppbar(
                apbarName: "Favorite",
              ),
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 25),
                  child: Column(
                    spacing: 5,
                    children: [
                      FilterSettingRow(),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Obx(() {
                              return GestureDetector(
                                onTap: doctorFavouriteController
                                    .toggleFirstButtonState,
                                child: BlueBaground(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 9, horizontal: 55),
                                  color: doctorFavouriteController
                                          .isFirstButtonPressed.value
                                      ? AppColors.bluemain
                                      : AppColors.grey,
                                  name: Row(
                                    children: [
                                      Text(
                                        "Doctors",
                                        style: doctorFavouriteController
                                                .isFirstButtonPressed.value
                                            ? CustomTextStyle.size20white
                                            : CustomTextStyle.size20blueclik,
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }),
                            Obx(() {
                              return GestureDetector(
                                onTap: doctorFavouriteController
                                    .toggleSecondButtonState,
                                child: BlueBaground(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 9, horizontal: 55),
                                  color: doctorFavouriteController
                                          .isSecondButtonPressed.value
                                      ? AppColors.bluemain
                                      : AppColors.grey,
                                  name: Row(
                                    children: [
                                      Text(
                                        "Services",
                                        style: doctorFavouriteController
                                                .isSecondButtonPressed.value
                                            ? CustomTextStyle.size20white
                                            : CustomTextStyle.size20blueclik,
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }),
                          ],
                        ),
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: DoctorFavouriteScreenButtons(),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
