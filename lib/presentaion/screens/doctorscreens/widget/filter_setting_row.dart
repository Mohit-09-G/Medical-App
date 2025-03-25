import 'package:flutter/material.dart';
import 'package:health_app/config/app_images.dart';
import 'package:health_app/config/app_string.dart';
import 'package:health_app/config/customtextstyle.dart';
import 'package:health_app/presentaion/screens/doctorscreens/widget/doctor_icon_back.dart';
import 'package:health_app/presentaion/screens/doctorscreens/widget/sort_icon_container.dart';

class FilterSettingRow extends StatelessWidget {
  const FilterSettingRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          spacing: 5,
          children: [
            Text(
              AppString.sortBy,
              style: CustomTextStyle.size12black,
            ),
            SortIconContainer(
              textStyle: CustomTextStyle.size12white,
              name: "A->Z",
            ),
            DoctorIconBack(iconAssetPath: AppImages.starcon),
            DoctorIconBack(iconAssetPath: AppImages.heart),
            DoctorIconBack(iconAssetPath: AppImages.maleIcon),
            DoctorIconBack(iconAssetPath: AppImages.femalIcon),
          ],
        ),
        Expanded(child: SizedBox())
      ],
    );
  }
}
