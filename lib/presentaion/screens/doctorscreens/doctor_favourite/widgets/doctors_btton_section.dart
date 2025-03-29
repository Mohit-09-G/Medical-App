import 'package:flutter/material.dart';
import 'package:health_app/config/app_colors.dart';
import 'package:health_app/config/app_images.dart';
import 'package:health_app/config/app_string.dart';
import 'package:health_app/config/customtextstyle.dart';
import 'package:health_app/presentaion/screens/doctorscreens/doctor-info/widget/blue_baground.dart';
import 'package:health_app/presentaion/screens/doctorscreens/doctor-info/widget/white_baground_container.dart';

class DoctorsBttonSection extends StatelessWidget {
  final String doctorname;
  final String doctorgenre;
  const DoctorsBttonSection(
      {super.key, required this.doctorname, required this.doctorgenre});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.grey, borderRadius: BorderRadius.circular(18)),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
        child: Row(
          spacing: 5,
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
                spacing: 5,
                children: [
                  Column(
                    spacing: 4,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              spacing: 3,
                              children: [
                                BlueBaground(
                                    padding: EdgeInsets.all(3),
                                    name: Image.asset(
                                      AppImages.flower,
                                      height: 15,
                                      color: AppColors.white,
                                      fit: BoxFit.fitHeight,
                                    )),
                                Text(
                                  AppString.professional,
                                  style: CustomTextStyle.size12blue,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      WhiteBagroundContainerText(
                          padding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 13),
                          name: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    doctorname,
                                    style: CustomTextStyle.size14blue,
                                  ),
                                  Text(
                                    doctorgenre,
                                    style: CustomTextStyle.size12black,
                                  )
                                ],
                              ),
                              Image.asset(
                                AppImages.heartrating,
                                height: 15,
                              )
                            ],
                          )),
                      BlueBaground(
                          padding: EdgeInsets.only(top: 5, bottom: 5),
                          name: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Make Appointment",
                                style: CustomTextStyle.size12whitew300,
                              ),
                            ],
                          ))
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
