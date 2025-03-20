import 'package:flutter/material.dart';

import 'package:health_app/config/app_colors.dart';
import 'package:health_app/config/app_images.dart';
import 'package:health_app/config/app_string.dart';
import 'package:health_app/config/customtextstyle.dart';
import 'package:health_app/presentaion/controller/welcome/welcomescreen_controller.dart';
import 'package:health_app/presentaion/screens/welcome/widgets/oval_buttons.dart';

class Welcomescreen extends StatefulWidget {
  const Welcomescreen({super.key});

  @override
  State<Welcomescreen> createState() => _WelcomescreenState();
}

class _WelcomescreenState extends State<Welcomescreen> {
  WelcomescreenController controller = WelcomescreenController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Image.asset(AppImages.logo2)],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(AppString.appname,
                          style: CustomTextStyle.size48blue),
                      Text(AppString.appname1, style: CustomTextStyle.size48h),
                    ],
                  ),
                  Text(
                    AppString.linesplash,
                    style: CustomTextStyle.size15blue,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Text(AppString.welcomLine,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyle.size13black),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(child: SizedBox()),
                            Expanded(
                              flex: 6,
                              child: OvalButtons(
                                  margin: EdgeInsets.only(top: 40),
                                  buttontext: AppString.login,
                                  buttonColor: AppColors.bluemain,
                                  textColor: AppColors.white,
                                  onTap: () {
                                    controller.moveTOlogin();
                                  }),
                            ),
                            Expanded(child: SizedBox()),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(child: SizedBox()),
                            Expanded(
                              flex: 6,
                              child: OvalButtons(
                                  margin: EdgeInsets.only(top: 10),
                                  buttontext: AppString.signin,
                                  buttonColor: AppColors.grey,
                                  textColor: AppColors.bluemain,
                                  onTap: () {}),
                            ),
                            Expanded(child: SizedBox()),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
