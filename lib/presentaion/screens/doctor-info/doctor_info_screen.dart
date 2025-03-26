import 'package:flutter/material.dart';
import 'package:health_app/config/app_colors.dart';
import 'package:health_app/config/app_string.dart';
import 'package:health_app/config/customtextstyle.dart';
import 'package:health_app/presentaion/mainscreen/widgets/bottom_bar.dart';
import 'package:health_app/presentaion/screens/doctor-info/widget/doctor_info_card.dart';
import 'package:health_app/presentaion/screens/doctorscreens/widget/doctor_screen_appbar.dart';
import 'package:health_app/presentaion/screens/doctorscreens/widget/filter_setting_row.dart';

class DoctorInfoScreen extends StatelessWidget {
  const DoctorInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      child: SafeArea(
        child: Scaffold(
          bottomNavigationBar: BottomBar(),
          backgroundColor: Colors.white,
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(40), child: SizedBox.shrink()),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                DoctorScreenAppbar(
                  apbarName: "Info",
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 23, right: 35),
                  child: Column(
                    spacing: 30,
                    children: [
                      Column(
                        spacing: 10,
                        children: [
                          FilterSettingRow(),
                          DoctorInfoCard(),
                        ],
                      ),
                      Column(
                        spacing: 20,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      AppString.profile,
                                      style: CustomTextStyle.size14blue,
                                    ),
                                    Text(
                                      AppString.profileText,
                                      style: CustomTextStyle.size12black,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      AppString.careerpath,
                                      style: CustomTextStyle.size14blue,
                                    ),
                                    Text(
                                      AppString.profileText,
                                      style: CustomTextStyle.size12black,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      AppString.highlight,
                                      style: CustomTextStyle.size14blue,
                                    ),
                                    Text(
                                      AppString.profileText,
                                      style: CustomTextStyle.size12black,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
