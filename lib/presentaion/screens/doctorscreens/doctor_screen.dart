import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/config/app_string.dart';
import 'package:health_app/presentaion/controller/doctorscreen/doctorcreen_controller.dart';
import 'package:health_app/presentaion/screens/doctorscreens/widget/doctor_screen_appbar.dart';
import 'package:health_app/presentaion/screens/doctorscreens/widget/dotor_card/doctor_cards.dart';

import 'package:health_app/presentaion/screens/doctorscreens/widget/filter_setting_row.dart';

class DoctorScreen extends StatefulWidget {
  const DoctorScreen({super.key});

  @override
  State<DoctorScreen> createState() => _DoctorScreenState();
}

DoctorcreenController controller = Get.put(DoctorcreenController());

class _DoctorScreenState extends State<DoctorScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(0), child: SizedBox.shrink()),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: DoctorScreenAppbar(
                apbarName: AppString.drAppbar,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  spacing: 3,
                  children: [
                    FilterSettingRow(),
                    Expanded(
                      child: ListView.separated(
                          padding: EdgeInsets.only(top: 10),
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              height: 10,
                            );
                          },
                          shrinkWrap: true,
                          itemCount: controller.doctors.length,
                          itemBuilder: (context, index) {
                            var doctor = controller.doctors[index];
                            return DoctorCards(
                                ontap: () {
                                  controller.navigateToInfo();
                                },
                                doctorname: doctor['name'],
                                doctorEducions: doctor['Education'],
                                doctorSpeciality: doctor['specialty']);
                          }),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
