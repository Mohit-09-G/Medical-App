import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/config/app_colors.dart';
import 'package:health_app/config/app_images.dart';

import 'package:health_app/config/app_string.dart';
import 'package:health_app/config/customtextstyle.dart';
import 'package:health_app/presentaion/controller/signup/signup_controller.dart';
import 'package:health_app/presentaion/screens/login/widgets/appbar.dart';
import 'package:health_app/presentaion/screens/login/widgets/circular_baground.dart';
import 'package:health_app/presentaion/screens/login/widgets/custom_input_text_field.dart';
import 'package:health_app/presentaion/screens/login/widgets/datecustomfiled.dart';
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
          child: AppbarCommon(
              title: AppString.hello,
              ontap: () {
                controller.back();
              })),
      body: Padding(
        padding: EdgeInsets.only(left: 30, right: 30),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              flex: 6,
              child: Column(
                spacing: 10,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    spacing: 3,
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
                                controller: controller.nameController,
                                label: "xyzexy",
                                obscureText: false,
                                onChanged: (value) {
                                  controller.validateName(value);
                                },
                                errorText: controller.nameError),
                          )
                        ],
                      ),
                    ],
                  ),
                  Column(
                    spacing: 3,
                    children: [
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
                              child: Obx(
                            () => CustomTextField(
                                controller: controller.passwordController,
                                label: "*********",
                                obscureText: controller.obscurePassword.value,
                                suffixIcon: IconButton(
                                    onPressed: () {
                                      controller.togglePasswordVisibility();
                                    },
                                    icon: Icon(controller.obscurePassword.value
                                        ? Icons.visibility_off_outlined
                                        : Icons.visibility_outlined)),
                                onChanged: (value) {
                                  controller.validatePassword(value);
                                },
                                errorText: controller.paswordError),
                          ))
                        ],
                      ),
                    ],
                  ),
                  Column(
                    spacing: 3,
                    children: [
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
                                  controller.validateEmail(value);
                                },
                                errorText: controller.emailError),
                          )
                        ],
                      ),
                    ],
                  ),
                  Column(
                    spacing: 3,
                    children: [
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
                                controller: controller.mobileController,
                                label: "12345678",
                                obscureText: false,
                                onChanged: (value) {
                                  controller.validateMobile(value);
                                },
                                errorText: controller.mobileError),
                          )
                        ],
                      ),
                    ],
                  ),
                  Column(
                    spacing: 3,
                    children: [
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
                            child: Datecustomfiled(
                                onTap: controller.datePicker,
                                controller: controller.dateController,
                                label: "DD/MM/YY",
                                obscureText: false,
                                onChanged: (value) {
                                  controller.validateDOb(value);
                                },
                                errorText: controller.dateError),
                          )
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Column(
                      spacing: 3,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              AppString.textsignscreen,
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
                spacing: 13,
                children: [
                  Column(
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
                                onTap: () {
                                  if (controller.isFormValid.value) {
                                    controller.getUsename();
                                    controller.createAccount();
                                    // Get.snackbar(
                                    //     'created', 'Succesfully Registred');
                                    controller.clearAllFields();
                                  } else {
                                    Get.snackbar('Validation Error',
                                        'Please fill in all required fields correctly');
                                  }
                                },
                                margin: EdgeInsets.only(top: 2)),
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
                              iconAssetPath: AppImages.google,
                            ),
                            CircularIcon(
                              iconAssetPath: AppImages.facebook,
                            ),
                            CircularIcon(
                              iconAssetPath: AppImages.fingerprint,
                            )
                          ],
                        ),
                      ),
                      Expanded(flex: 2, child: SizedBox()),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    AppString.alreadyhave,
                                    style: CustomTextStyle.size12black,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      controller.navigateToLogin();
                                    },
                                    child: Text(
                                      AppString.login,
                                      style: CustomTextStyle.size12blue,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
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
