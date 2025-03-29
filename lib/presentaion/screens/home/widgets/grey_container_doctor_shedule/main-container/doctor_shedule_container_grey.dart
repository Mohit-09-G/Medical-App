import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/config/app_colors.dart';
import 'package:health_app/presentaion/controller/home/home_screen_controller.dart';
import 'package:health_app/presentaion/screens/home/widgets/grey_container_doctor_shedule/%20schedule-prescrition-time/day_hours_items.dart';
import 'package:health_app/presentaion/screens/home/widgets/grey_container_doctor_shedule/main-container/week_time_timeline.dart';

class DoctorSheduleContainerGrey extends StatefulWidget {
  const DoctorSheduleContainerGrey({super.key});

  @override
  State<DoctorSheduleContainerGrey> createState() =>
      _DoctorSheduleContainerGrey();
}

class _DoctorSheduleContainerGrey extends State<DoctorSheduleContainerGrey> {
  late HomeScreenController controller;

  @override
  void initState() {
    super.initState();

    controller = Get.find<HomeScreenController>();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(shape: BoxShape.rectangle, color: AppColors.grey),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 35),
        child: Column(
          children: [
            Expanded(
              child: Obx(() {
                return PageView.builder(
                  scrollBehavior: ScrollBehavior(),
                  controller: controller.pageController,
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.dateList.length,
                  onPageChanged: (pageIndex) {
                    if (pageIndex == controller.dateList.length - 1) {
                      controller.loadNext7Days();
                    }
                  },
                  itemBuilder: (context, index) {
                    DateTime date = controller.dateList[index];
                    String getFormattedDate = controller.getFormattedDate(date);
                    String getFormattedDayNumber =
                        controller.getFormattedDayNumber(date);

                    return Row(
                      children: [
                        DateListItem(
                          date: getFormattedDate,
                          dayNum: getFormattedDayNumber,
                        ),
                      ],
                    );
                  },
                );
              }),
            ),
            SheduleContainer(),
          ],
        ),
      ),
    );
  }
}
