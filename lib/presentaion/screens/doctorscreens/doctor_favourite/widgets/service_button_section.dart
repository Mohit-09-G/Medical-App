import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/presentaion/controller/doctor_favourite/doctor_favourite_controller.dart';
import 'package:health_app/presentaion/screens/doctorscreens/doctor_favourite/widgets/droplist_doctor_favourite.dart';

class ServiceButtonSection extends StatefulWidget {
  const ServiceButtonSection({super.key});

  @override
  State<ServiceButtonSection> createState() => _ServiceButtonSectionState();
}

DoctorFavouriteController controller = Get.put(DoctorFavouriteController());

class _ServiceButtonSectionState extends State<ServiceButtonSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: controller.itemList.length,
          itemBuilder: (context, index) {
            var items = controller.itemList[index];
            return Padding(
              padding: const EdgeInsets.only(top: 10),
              child: DroplistDoctorFavourite(listname: items),
            );
          },
        ),
      ],
    );
  }
}
