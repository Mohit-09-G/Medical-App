import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/config/app_colors.dart';
import 'package:health_app/presentaion/controller/doctorscreen/doctorcreen_controller.dart';

import 'package:health_app/presentaion/screens/home/widgets/doctor_lists/doctor_data_card/grey_container.dart';

class DoctorListContainer extends StatefulWidget {
  const DoctorListContainer({super.key});

  @override
  State<DoctorListContainer> createState() => _DoctorListContainer();
}

DoctorcreenController doctorcreenController = Get.put(DoctorcreenController());

class _DoctorListContainer extends State<DoctorListContainer> {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (doctorcreenController.isLoading.value) {
        return Center(child: CircularProgressIndicator());
      }

      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 35),
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: doctorcreenController.doctorsList.length,
          itemBuilder: (context, index) {
            var doctor = doctorcreenController.doctorsList[index];
            return Container(
              decoration: BoxDecoration(color: AppColors.white),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: GreyContainerDoctorList(
                  doctorname: doctor.name,
                  speciality: doctor.specality,
                ),
              ),
            );
          },
        ),
      );
    });
  }
}
