import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/config/app_colors.dart';

import 'package:health_app/config/app_string.dart';
import 'package:health_app/config/customtextstyle.dart';
import 'package:health_app/presentaion/controller/signup/signup_controller.dart';
import 'package:health_app/presentaion/screens/login/widgets/appbar.dart';
import 'package:health_app/presentaion/screens/login/widgets/circular_baground.dart';
import 'package:health_app/presentaion/screens/login/widgets/custom_input_text_field.dart';
import 'package:health_app/presentaion/screens/welcome/widgets/oval_buttons.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

late SignupController controller;

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  void initState() {
    controller = Get.find<SignupController>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppbarCommon(title: AppString.hello, ontap: () {})),
      body: Padding(
        padding: EdgeInsets.only(left: 30, right: 30),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        AppString.fullName,
                        style: CustomTextStyle.size20black,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextField(
                            controller: controller.emailController,
                            label: "xyzexy",
                            obscureText: false,
                            onChanged: (value) {
                              print(value);
                            },
                            errorText: controller.emailError),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        AppString.passwordText,
                        style: CustomTextStyle.size20black,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextField(
                            controller: controller.emailController,
                            label: "*********",
                            obscureText: false,
                            onChanged: (value) {
                              print(value);
                            },
                            errorText: controller.emailError),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        AppString.emailtet,
                        style: CustomTextStyle.size20black,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextField(
                            controller: controller.emailController,
                            label: "example@gmail.com",
                            obscureText: false,
                            onChanged: (value) {
                              print(value);
                            },
                            errorText: controller.emailError),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        AppString.mobileNumber,
                        style: CustomTextStyle.size20black,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextField(
                            controller: controller.emailController,
                            label: "12345678",
                            obscureText: false,
                            onChanged: (value) {
                              print(value);
                            },
                            errorText: controller.emailError),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        AppString.dob,
                        style: CustomTextStyle.size20black,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextField(
                            controller: controller.emailController,
                            label: "DD/MM/YY",
                            obscureText: false,
                            onChanged: (value) {
                              print(value);
                            },
                            errorText: controller.emailError),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              AppString.signuptext2,
                              style: CustomTextStyle.size12black,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(AppString.term,
                                    style: CustomTextStyle.size12blue)
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(AppString.and,
                                    style: CustomTextStyle.size12black)
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(AppString.privacy,
                                    style: CustomTextStyle.size12blue)
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                spacing: 15,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(flex: 1, child: SizedBox()),
                      Expanded(
                        flex: 3,
                        child: OvalButtons(
                            buttontext: AppString.singUp,
                            buttonColor: AppColors.bluemain,
                            textColor: AppColors.white,
                            onTap: () {},
                            margin: EdgeInsets.only(top: 20)),
                      ),
                      Expanded(
                        flex: 1,
                        child: SizedBox(),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(flex: 2, child: SizedBox()),
                      Expanded(
                        flex: 3,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              AppString.signuptext,
                              style: CustomTextStyle.size12black,
                            )
                          ],
                        ),
                      ),
                      Expanded(flex: 2, child: SizedBox()),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(flex: 2, child: SizedBox()),
                      Expanded(
                        flex: 3,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircularIcon(
                              icons: Icons.facebook,
                            ),
                            CircularIcon(
                              icons: Icons.facebook,
                            ),
                            CircularIcon(
                              icons: Icons.facebook,
                            )
                          ],
                        ),
                      ),
                      Expanded(flex: 2, child: SizedBox()),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 25),
                    child: Row(
                      children: [
                        Expanded(flex: 1, child: SizedBox()),
                        Expanded(
                          flex: 2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    AppString.signuptext2,
                                    style: CustomTextStyle.size12black,
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Text(
                                      AppString.singUp,
                                      style: CustomTextStyle.size12blue,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Expanded(flex: 1, child: SizedBox()),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
