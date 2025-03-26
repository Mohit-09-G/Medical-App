import 'package:flutter/material.dart';
import 'package:health_app/config/app_colors.dart';
import 'package:health_app/config/app_images.dart';
import 'package:health_app/config/app_string.dart';
import 'package:health_app/config/customtextstyle.dart';
import 'package:health_app/presentaion/screens/doctor-info/widget/blue_baground.dart';
import 'package:health_app/presentaion/screens/doctor-info/widget/white_baground_container.dart';
import 'package:health_app/presentaion/screens/doctorscreens/widget/doctor_screen_appbar.dart';
import 'package:health_app/presentaion/screens/doctorscreens/widget/filter_setting_row.dart';
import 'package:health_app/presentaion/screens/home/widgets/white_baground_container.dart';

class DoctorsRating extends StatelessWidget {
  const DoctorsRating({super.key});

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
                apbarName: "Rating",
              ),
              Padding(
                padding: const EdgeInsets.only(left: 23, right: 35),
                child: Column(
                  children: [
                    FilterSettingRow(),
                    Container(
                      decoration: BoxDecoration(
                          color: AppColors.grey,
                          borderRadius: BorderRadius.circular(18)),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Image.asset(
                                  AppImages.ratingDocimage,
                                  fit: BoxFit.fitHeight,
                                )),
                            Expanded(
                              flex: 3,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      BlueBaground(
                                          padding: EdgeInsets.all(3),
                                          name: Image.asset(
                                            AppImages.flower,
                                            height: 15,
                                            color: AppColors.white,
                                            fit: BoxFit.fitHeight,
                                          )),
                                      Row(
                                        children: [
                                          Text(
                                            AppString.professional,
                                            style: CustomTextStyle.size12blue,
                                          ),
                                          WhiteBagroundContainerText(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 3, horizontal: 8),
                                              name: Row(
                                                spacing: 3,
                                                children: [
                                                  Image.asset(AppImages.rating),
                                                  Text(
                                                    "5",
                                                    style: CustomTextStyle
                                                        .size12blue,
                                                  )
                                                ],
                                              )),
                                        ],
                                      )
                                    ],
                                  ),
                                  WhiteBagroundContainerText(
                                      name: Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            AppString.drName,
                                            style: CustomTextStyle.size14blue,
                                          ),
                                          Text(
                                            AppString.drgenre,
                                            style: CustomTextStyle.size12black,
                                          )
                                        ],
                                      ),
                                    ],
                                  )),
                                  Row(
                                    children: [
                                      BlueBaground(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 5, horizontal: 6),
                                          name: Row(
                                            spacing: 10,
                                            children: [
                                              Row(
                                                spacing: 3,
                                                children: [
                                                  Image.asset(
                                                    AppImages.calenderList,
                                                    height: 13,
                                                    color: Colors.white,
                                                  ),
                                                  Text(
                                                    "Info",
                                                    style: CustomTextStyle
                                                        .size13whiteW3,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          )),
                                      Row(
                                        spacing: 3,
                                        children: [
                                          WhiteBagroundContainer(
                                            iconAssetPath:
                                                AppImages.calenderList,
                                          ),
                                          WhiteBagroundContainer(
                                            iconAssetPath: AppImages.line,
                                            hight: 40,
                                          ),
                                          WhiteBagroundContainer(
                                            hight: 15,
                                            iconAssetPath:
                                                AppImages.questionMark,
                                          ),
                                          WhiteBagroundContainer(
                                            iconAssetPath: AppImages.heartList,
                                          )
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
