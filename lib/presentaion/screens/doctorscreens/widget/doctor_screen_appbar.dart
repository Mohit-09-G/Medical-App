import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/config/app_colors.dart';
import 'package:health_app/config/app_images.dart';
import 'package:health_app/config/customtextstyle.dart';

import 'package:health_app/presentaion/controller/doctorscreen/doctorcreen_controller.dart';
import 'package:health_app/presentaion/screens/doctorscreens/widget/doctor_icon_back.dart';

class DoctorScreenAppbar extends StatefulWidget {
  final String apbarName;

  const DoctorScreenAppbar({super.key, required this.apbarName});

  @override
  State<DoctorScreenAppbar> createState() => _DoctorScreenAppbarState();
}

class _DoctorScreenAppbarState extends State<DoctorScreenAppbar> {
  DoctorcreenController controller = Get.put(DoctorcreenController());

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      title: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    controller.navigateTOback();
                  },
                  child: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: AppColors.bluemain,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.apbarName,
                  style: CustomTextStyle.size24blue,
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 5,
              children: [
                DoctorIconBack(iconAssetPath: AppImages.search),
                DoctorIconBack(iconAssetPath: AppImages.filter),
              ],
            ),
          )
        ],
      ),
    );
  }
}
