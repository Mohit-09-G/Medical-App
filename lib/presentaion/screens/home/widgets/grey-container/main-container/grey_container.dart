import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/config/app_colors.dart';
import 'package:health_app/presentaion/controller/home/home_screen_controller.dart';
import 'package:health_app/presentaion/screens/home/widgets/grey-container/%20schedule-prescrition-time/day_hours_items.dart';
import 'package:health_app/presentaion/screens/home/widgets/grey-container/main-container/week_time_timeline.dart';

class GreyContainer extends StatefulWidget {
  const GreyContainer({super.key});

  @override
  State<GreyContainer> createState() => _GreyContainerState();
}

class _GreyContainerState extends State<GreyContainer> {
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
