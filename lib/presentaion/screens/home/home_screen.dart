import 'package:flutter/material.dart';
import 'package:health_app/config/app_colors.dart';
import 'package:health_app/config/app_images.dart';
import 'package:health_app/config/app_string.dart';
import 'package:health_app/config/customtextstyle.dart';
import 'package:health_app/presentaion/screens/home/widgets/bottom-navigation-bar/homebottombar.dart';
import 'package:health_app/presentaion/screens/home/widgets/grey-container/main-container/grey_container.dart';
import 'package:health_app/presentaion/screens/home/widgets/topfeatures/home_app_bar.dart';
import 'package:health_app/presentaion/screens/home/widgets/topfeatures/search_container.dart';
import 'package:health_app/presentaion/screens/home/widgets/white-container/white_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: PreferredSize(
      //     preferredSize: Size.fromHeight(50), child: Homebottombar()),
      backgroundColor: AppColors.white,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(70), child: HomeAppBar()),
      body: Column(
        spacing: 20,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10, right: 20),
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
          Expanded(flex: 1, child: GreyContainer()),
          Expanded(flex: 2, child: WhiteContainer())
        ],
      ),
    );
  }
}
