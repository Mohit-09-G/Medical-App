import 'package:flutter/material.dart';

import 'package:health_app/config/app_colors.dart';
import 'package:health_app/config/app_images.dart';

import 'package:health_app/config/customtextstyle.dart';

import 'package:health_app/presentaion/screens/doctorscreens/widget/sort_icon_container.dart';
import 'package:health_app/presentaion/screens/home/widgets/white_baground_container.dart';

class DoctorCards extends StatelessWidget {
  final String doctorname;
  final String doctorEducions;
  final String doctorSpeciality;
  final VoidCallback ontap;
  const DoctorCards(
      {super.key,
      required this.doctorname,
      required this.doctorEducions,
      required this.doctorSpeciality,
      required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 7),
      decoration: BoxDecoration(
          color: AppColors.grey,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Image.asset(
                AppImages.docPageimage,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  Column(
                    spacing: 5,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                doctorname,
                                style: CustomTextStyle.size15bluelist,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                doctorEducions,
                                style: CustomTextStyle.size15bluelist,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            doctorSpeciality,
                            style: CustomTextStyle.size13blackW3,
                          )
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: ontap,
                              child: SortIconContainer(
                                name: " Info ",
                                textStyle: CustomTextStyle.size15white,
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Row(
                          spacing: 2,
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
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
