import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/config/app_colors.dart';
import 'package:health_app/presentaion/controller/home/home_screen_controller.dart';
import 'package:health_app/presentaion/screens/home/widgets/doctor_lists/doctor_data_card/grey_container.dart';

class WhiteContainer extends StatefulWidget {
  const WhiteContainer({super.key});

  @override
  State<WhiteContainer> createState() => _WhiteContainerState();
}

class _WhiteContainerState extends State<WhiteContainer> {
  late HomeScreenController controller;

  @override
  void initState() {
    controller = Get.find<HomeScreenController>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 35),
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: controller.doctors.length,
        itemBuilder: (context, index) {
          var doctor = controller.doctors[index];
          return Container(
            decoration: BoxDecoration(color: AppColors.white),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: GreyContainerDoctorList(
                doctorname: doctor['name'],
                speciality: doctor['specialty'],
              ),
            ),
          );
        },
      ),
    );
  }
}
