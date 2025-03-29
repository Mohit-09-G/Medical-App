import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/config/app_colors.dart';
import 'package:health_app/presentaion/controller/doctorratingscreen/doctor_rating_controller.dart';
import 'package:health_app/presentaion/screens/doctorscreens/doctor_rating/widgets/doctor_rating_cart.dart';
import 'package:health_app/presentaion/screens/doctorscreens/widget/doctor_screen_appbar.dart';
import 'package:health_app/presentaion/screens/doctorscreens/widget/filter_setting_row.dart';

class DoctorsRating extends StatefulWidget {
  const DoctorsRating({super.key});

  @override
  State<DoctorsRating> createState() => _DoctorsRatingState();
}

class _DoctorsRatingState extends State<DoctorsRating> {
  DoctorRatingController controller = Get.put(DoctorRatingController());

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.white,
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(40), child: SizedBox.shrink()),
          body: Column(
            children: [
              DoctorScreenAppbar(
                apbarName: "Rating",
              ),
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  child: Column(
                    spacing: 10,
                    children: [
                      FilterSettingRow(),
                      Expanded(
                        child: ListView.separated(
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              height: 10,
                            );
                          },
                          shrinkWrap: true,
                          itemCount: controller.doctors.length,
                          itemBuilder: (context, index) {
                            var doctor = controller.doctors[index];
                            return DoctorRatingCart(
                              doctorgenre: doctor['specialty'],
                              doctorname: doctor['name'],
                              doctorrating: doctor['rating'],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
