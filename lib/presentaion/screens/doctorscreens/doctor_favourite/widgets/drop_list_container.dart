import 'package:flutter/material.dart';
import 'package:health_app/config/app_colors.dart';
import 'package:health_app/config/app_string.dart';
import 'package:health_app/config/customtextstyle.dart';

class DropListContainer extends StatelessWidget {
  const DropListContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 15,
      children: [
        Container(
          decoration: BoxDecoration(
              color: AppColors.grey,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(18)),
          child: Row(
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  AppString.profileText,
                  style: CustomTextStyle.size13blackw200,
                ),
              ))
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
              color: AppColors.grey,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(21)),
          child: Row(
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("looking for Doctor",
                    textAlign: TextAlign.center,
                    style: CustomTextStyle.size20blueclik),
              ))
            ],
          ),
        ),
      ],
    );
  }
}
