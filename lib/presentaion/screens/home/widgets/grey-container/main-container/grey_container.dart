import 'package:flutter/material.dart';
import 'package:health_app/config/app_colors.dart';
import 'package:health_app/presentaion/screens/home/widgets/grey-container/main-container/date_list_item.dart';
import 'package:health_app/presentaion/screens/home/widgets/grey-container/shedule-date-calender-container/date_list_item_container.dart';

class GreyContainer extends StatefulWidget {
  const GreyContainer({super.key});

  @override
  State<GreyContainer> createState() => _GreyContainerState();
}

class _GreyContainerState extends State<GreyContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(shape: BoxShape.rectangle, color: AppColors.grey),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                    12,
                    (index) => Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: DateListItem(),
                        )),
              ),
            ),
            SheduleContainer(),
          ],
        ),
      ),
    );
  }
}
