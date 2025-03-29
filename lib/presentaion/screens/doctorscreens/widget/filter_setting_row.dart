import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/config/app_colors.dart';
import 'package:health_app/config/app_images.dart';
import 'package:health_app/config/app_string.dart';
import 'package:health_app/config/customtextstyle.dart';
import 'package:health_app/presentaion/controller/doctorscreen/doctorcreen_controller.dart';

import 'package:health_app/presentaion/screens/doctorscreens/widget/doctor_icon_back.dart';
import 'package:health_app/presentaion/screens/doctorscreens/widget/sort_icon_container.dart';

class FilterSettingRow extends StatefulWidget {
  const FilterSettingRow({super.key});

  @override
  State<FilterSettingRow> createState() => _FilterSettingRowState();
}

DoctorcreenController controller = DoctorcreenController();

class _FilterSettingRowState extends State<FilterSettingRow> {
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
            Obx(
              () => SortIconContainer(
                onTap: () {
                  controller.updateSelectedIndex(0);
                  controller.navigateTodoctor();
                },
                color: controller.selectedIndex.value == 0
                    ? AppColors.bluemain
                    : AppColors.grey,
                textStyle: controller.selectedIndex.value == 0
                    ? CustomTextStyle.size12white
                    : CustomTextStyle.size12blue,
                name: "A->Z",
              ),
            ),
            Obx(
              () => DoctorIconBack(
                iconAssetPath: AppImages.starcon,
                imagecolor: controller.selectedIndex.value == 1
                    ? AppColors.white
                    : AppColors.bluemain,
                ontap: () {
                  controller.updateSelectedIndex(1);
                  controller.navigateToRating();
                },
                color: controller.selectedIndex.value == 1
                    ? AppColors.bluemain
                    : AppColors.grey,
              ),
            ),
            Obx(
              () => DoctorIconBack(
                imagecolor: controller.selectedIndex.value == 2
                    ? AppColors.white
                    : AppColors.bluemain,
                iconAssetPath: AppImages.heart,
                ontap: () {
                  controller.updateSelectedIndex(2);
                  controller.navigateToFav();
                },
                color: controller.selectedIndex.value == 2
                    ? AppColors.bluemain
                    : AppColors.grey,
              ),
            ),
            Obx(
              () => DoctorIconBack(
                imagecolor: controller.selectedIndex.value == 3
                    ? AppColors.white
                    : AppColors.bluemain,
                iconAssetPath: AppImages.maleIcon,
                ontap: () {
                  controller.updateSelectedIndex(3);
                },
                color: controller.selectedIndex.value == 3
                    ? AppColors.bluemain
                    : AppColors.grey,
              ),
            ),
            Obx(
              () => DoctorIconBack(
                imagecolor: controller.selectedIndex.value == 4
                    ? AppColors.white
                    : AppColors.bluemain,
                iconAssetPath: AppImages.femalIcon,
                ontap: () {
                  controller.updateSelectedIndex(4);
                },
                color: controller.selectedIndex.value == 4
                    ? AppColors.bluemain
                    : AppColors.grey,
              ),
            ),
          ],
        ),
        Expanded(child: SizedBox())
      ],
    );
  }
}
