import 'package:flutter/material.dart';
import 'package:health_app/config/app_colors.dart';
import 'package:health_app/config/customtextstyle.dart';

class BlueBagroundIcon extends StatelessWidget {
  final String name;
  final String name2;
  final String image;
  const BlueBagroundIcon(
      {super.key,
      required this.name,
      required this.name2,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: AppColors.bluemain,
          borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Image.asset(image),
            Column(
              children: [
                Text(
                  name,
                  style: CustomTextStyle.size12white,
                ),
                Text(
                  name2,
                  style: CustomTextStyle.size12white,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
