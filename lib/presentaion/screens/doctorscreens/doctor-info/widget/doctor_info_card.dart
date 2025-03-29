import 'package:flutter/material.dart';
import 'package:health_app/config/app_colors.dart';
import 'package:health_app/config/app_images.dart';
import 'package:health_app/config/app_string.dart';
import 'package:health_app/config/customtextstyle.dart';

import 'package:health_app/presentaion/screens/doctorscreens/doctor-info/widget/blue_baground.dart';
import 'package:health_app/presentaion/screens/doctorscreens/doctor-info/widget/white_baground_container.dart';

import 'package:health_app/presentaion/screens/doctorscreens/widget/doctor_icon_back.dart';
import 'package:health_app/presentaion/screens/home/widgets/white_baground_container.dart';

class DoctorInfoCard extends StatelessWidget {
  const DoctorInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.grey,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(17)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          spacing: 10,
          children: [
            Row(
              children: [
                Expanded(
                    flex: 6,
                    child: Image.asset(
                      AppImages.docInfoCard,
                      fit: BoxFit.fill,
                    )),
                Expanded(
                  flex: 6,
                  child: Column(
                    spacing: 10,
                    children: [
                      BlueBaground(
                          padding:
                              EdgeInsets.symmetric(vertical: 1, horizontal: 3),
                          margin: EdgeInsets.only(
                            left: 18,
                            right: 26,
                          ),
                          name: Row(
                            spacing: 4,
                            children: [
                              DoctorIconBack(iconAssetPath: AppImages.flower),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    AppString.yr15,
                                    style: CustomTextStyle.size12white,
                                  ),
                                  Text(
                                    AppString.exp,
                                    style: CustomTextStyle.size12whitew300,
                                  ),
                                ],
                              )
                            ],
                          )),
                      BlueBaground(
                          margin: EdgeInsets.symmetric(
                              vertical: 00, horizontal: 20),
                          name: RichText(
                              text: TextSpan(
                                  text: AppString.focus,
                                  style: CustomTextStyle.size12whitebold,
                                  children: [
                                TextSpan(
                                    text: AppString.docFocus,
                                    style: CustomTextStyle.size12white)
                              ])))
                    ],
                  ),
                )
              ],
            ),
            WhiteBagroundContainerText(
                margin: EdgeInsets.only(left: 10, right: 17),
                name: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          AppString.nameAndedu,
                          style: CustomTextStyle.size15bluelist,
                        ),
                        Text(
                          AppString.drgenre,
                          style: CustomTextStyle.size13blackW3,
                        )
                      ],
                    ),
                  ],
                )),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      spacing: 3,
                      children: [
                        WhiteBagroundContainerText(
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            name: Row(
                              spacing: 4,
                              children: [
                                Image.asset(
                                  AppImages.rating,
                                  height: 13,
                                ),
                                Text(
                                  "5",
                                  style: CustomTextStyle.size12blue,
                                )
                              ],
                            )),
                        WhiteBagroundContainerText(
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            name: Row(
                              spacing: 4,
                              children: [
                                Image.asset(
                                  AppImages.rating,
                                  height: 13,
                                ),
                                Text(
                                  "30",
                                  style: CustomTextStyle.size12blue,
                                )
                              ],
                            )),
                      ],
                    ),
                    WhiteBagroundContainerText(
                        padding: EdgeInsets.all(5),
                        name: Row(
                          spacing: 6,
                          children: [
                            Image.asset(
                              AppImages.clock,
                              height: 13,
                            ),
                            Text(
                              "Mon-Sat / 9:00AM - 5:00PM",
                              style: CustomTextStyle.size12blue,
                            )
                          ],
                        ))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 13, right: 13),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BlueBaground(
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 6),
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
                                    "Schedule",
                                    style: CustomTextStyle.size13whiteW3,
                                  ),
                                ],
                              ),
                            ],
                          )),
                      Row(
                        spacing: 3,
                        children: [
                          WhiteBagroundContainer(
                            iconAssetPath: AppImages.calenderList,
                          ),
                          WhiteBagroundContainer(
                            iconAssetPath: AppImages.line,
                            hight: 40,
                          ),
                          WhiteBagroundContainer(
                            hight: 15,
                            iconAssetPath: AppImages.questionMark,
                          ),
                          WhiteBagroundContainer(
                            iconAssetPath: AppImages.heartList,
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
