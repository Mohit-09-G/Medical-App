import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/config/app_colors.dart';
import 'package:health_app/config/app_images.dart';
import 'package:health_app/config/app_string.dart';
import 'package:health_app/config/customtextstyle.dart';
import 'package:health_app/presentaion/controller/home/home_screen_controller.dart';

import 'package:health_app/presentaion/screens/home/widgets/grey-container/main-container/grey_container.dart';
import 'package:health_app/presentaion/screens/home/widgets/topfeatures/home_app_bar.dart';
import 'package:health_app/presentaion/screens/home/widgets/topfeatures/search_container.dart';
import 'package:health_app/presentaion/screens/home/widgets/doctor_lists/white_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeScreenController controller = Get.put(HomeScreenController());
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(70), child: HomeAppBar()),
      body: SingleChildScrollView(
        child: Column(
          spacing: 20,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 10),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      spacing: 5,
                      children: [
                        Image.asset(AppImages.doctor),
                        Text(
                          AppString.doctor,
                          style: CustomTextStyle.size12blue,
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      spacing: 5,
                      children: [
                        Image.asset(AppImages.heart),
                        Text(
                          AppString.favourite,
                          style: CustomTextStyle.size12blue,
                        )
                      ],
                    ),
                  ),
                  Expanded(
                      flex: 4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SearchContainer(),
                        ],
                      ))
                ],
              ),
            ),
            Container(
              color: AppColors.white,
              height: screenHeight * 3.3 / 12,
              child: GreyContainer(),
            ),
            Container(
              color: AppColors.white,
              height: screenHeight * 4.76 / 12,
              child: WhiteContainer(),
            ),
          ],
        ),
      ),
    );
  }
}
