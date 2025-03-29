import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/presentaion/controller/doctorscreen/doctorcreen_controller.dart';
import 'package:health_app/presentaion/screens/doctorscreens/doctor_favourite/widgets/doctors_btton_section.dart';
import 'package:health_app/presentaion/screens/doctorscreens/doctor_favourite/widgets/service_button_section.dart';

class DoctorFavouriteScreenButtons extends StatefulWidget {
  const DoctorFavouriteScreenButtons({super.key});

  @override
  State<DoctorFavouriteScreenButtons> createState() =>
      _DoctorFavouriteScreenButtonsState();
}

class _DoctorFavouriteScreenButtonsState
    extends State<DoctorFavouriteScreenButtons> {
  final DoctorcreenController doctorFavouriteController =
      Get.put(DoctorcreenController());
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(() {
          if (controller.currentSection.value == 'Doctors') {
            return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: 10,
                );
              },
              shrinkWrap: true,
              itemCount: doctorFavouriteController.doctors.length,
              itemBuilder: (context, index) {
                var doctor = doctorFavouriteController.doctors[index];
                return DoctorsBttonSection(
                  doctorgenre: doctor['specialty'],
                  doctorname: doctor['name'],
                );
              },
            );
          } else if (controller.currentSection.value == 'Services') {
            return ServiceButtonSection();
          } else {
            return Container();
          }
        })
      ],
    );
  }
}
