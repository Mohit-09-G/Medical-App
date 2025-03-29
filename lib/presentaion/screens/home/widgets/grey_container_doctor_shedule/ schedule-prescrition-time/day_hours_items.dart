import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:health_app/config/app_colors.dart';
import 'package:health_app/config/app_string.dart';
import 'package:health_app/config/customtextstyle.dart';
import 'package:health_app/presentaion/screens/home/widgets/grey_container_doctor_shedule/prescription-card/treatment_container.dart';

class SheduleContainer extends StatelessWidget {
  const SheduleContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 3, vertical: 10),
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: AppColors.white,
          borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(flex: 1, child: SizedBox()),
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          AppString.sheduletime,
                          style: CustomTextStyle.size12blue,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              spacing: 10,
              children: [
                Column(
                  children: [
                    Text("11 AM"),
                    Text("12 AM"),
                    Text("01 AM"),
                    Text("02 AM"),
                  ],
                ),
                Column(
                  spacing: 8,
                  children: [
                    Container(
                      color: AppColors.white,
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: DottedLine(
                        dashColor: AppColors.black,
                        lineThickness: 0.5,
                        dashGapLength: 1,
                      ),
                    ),
                    TreatmentContainer(),
                    Container(
                      color: AppColors.white,
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: DottedLine(
                        dashColor: AppColors.black,
                        lineThickness: 0.5,
                        dashGapLength: 1,
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
