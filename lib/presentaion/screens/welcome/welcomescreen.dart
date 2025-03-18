import 'package:flutter/material.dart';
import 'package:health_app/config/app_colors.dart';
import 'package:health_app/config/app_images.dart';
import 'package:health_app/config/app_string.dart';
import 'package:health_app/presentaion/screens/welcome/widgets/oval_buttons.dart';

class Welcomescreen extends StatelessWidget {
  const Welcomescreen({super.key});

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
                      Text(
                        AppString.appname,
                        style: TextStyle(
                            height: 1,
                            fontFamily: 'LeagueSpartan',
                            color: AppColors.bluemain,
                            letterSpacing: 0,
                            fontWeight: FontWeight.w100,
                            fontSize: 48),
                      ),
                      Text(
                        AppString.appname1,
                        style: TextStyle(
                            height: 0.6,
                            fontWeight: FontWeight.w100,
                            fontFamily: 'LeagueSpartan',
                            color: AppColors.bluemain,
                            letterSpacing: 0,
                            fontSize: 48),
                      ),
                    ],
                  ),
                  Text(
                    AppString.linesplash,
                    style: TextStyle(
                        fontFamily: 'LeagueSpartan',
                        color: AppColors.bluemain,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w600,
                        fontSize: 15),
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
                              child: Text(
                                AppString.welcomLine,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'LeagueSpartan',
                                    fontSize: 13,
                                    height: 1,
                                    color: AppColors.black,
                                    fontWeight: FontWeight.w600),
                              ),
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
                                  buttontext: 'Log In',
                                  buttonColor: AppColors.bluemain,
                                  textColor: AppColors.white,
                                  onTap: () {}),
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
                                  buttontext: 'Sign In',
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
