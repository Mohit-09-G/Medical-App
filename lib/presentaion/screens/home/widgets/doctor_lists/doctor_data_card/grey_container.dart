import 'package:flutter/material.dart';

import 'package:health_app/config/app_colors.dart';
import 'package:health_app/config/app_images.dart';
import 'package:health_app/presentaion/screens/home/widgets/doctor_lists/doctor_data_card/dotor_name_container.dart';
import 'package:health_app/presentaion/screens/home/widgets/doctor_lists/doctor_data_card/image_container.dart';
import 'package:health_app/presentaion/screens/home/widgets/doctor_lists/doctor_data_card/plane_white_container.dart';

class GreyContainerDoctorList extends StatelessWidget {
  final String doctorname;
  final String speciality;
  const GreyContainerDoctorList(
      {super.key, required this.doctorname, required this.speciality});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: AppColors.grey,
            borderRadius: BorderRadius.circular(17)),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    AppImages.doctorimage,
                  )
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                          child: Column(
                        spacing: 8,
                        children: [
                          DotorNameContainer(
                            doctorName: doctorname,
                            speciality: speciality,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                flex: 3,
                                child: Row(
                                  spacing: 10,
                                  children: [
                                    IconWithText(
                                        text: "50", icon: AppImages.heartfill),
                                    IconWithText(
                                        text: "60", icon: AppImages.heartfill),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  spacing: 5,
                                  children: [
                                    CircularImageContainer(
                                        imageAsset: AppImages.questionMark),
                                    CircularImageContainer(
                                        imageAsset: AppImages.heartfill),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      )),
                    ],
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
