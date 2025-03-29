import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:health_app/config/app_colors.dart';
import 'package:health_app/config/app_images.dart';
import 'package:health_app/config/app_string.dart';
import 'package:health_app/config/customtextstyle.dart';
import 'package:health_app/presentaion/controller/login/login_screen_controller.dart';
import 'package:health_app/presentaion/screens/login/widgets/appbar.dart';
import 'package:health_app/presentaion/screens/login/widgets/circular_baground.dart';
import 'package:health_app/presentaion/screens/login/widgets/custom_input_text_field.dart';
import 'package:health_app/presentaion/screens/welcome/widgets/oval_buttons.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late LoginScreenController controller;

  @override
  void initState() {
    controller = Get.find<LoginScreenController>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppbarCommon(
              title: AppString.login,
              ontap: () {
                controller.back();
              })),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 30, right: 30),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                color: AppColors.white,
                height: screenHeight * 1.3 / 6,
                child: Column(
                  spacing: 6,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          SizedBox(),
                          Text(
                            AppString.welcome,
                            style: CustomTextStyle.size24blue,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          Expanded(
                              child: Text(
                            AppString.loginScreentxt,
                            style: CustomTextStyle.size12black,
                          ))
                        ],
                      ),
                    ),
                    Expanded(flex: 2, child: SizedBox()),
                  ],
                ),
              ),
              Container(
                color: AppColors.white,
                height: screenHeight * 2 / 6,
                child: Column(
                  spacing: 6,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          AppString.emailText,
                          style: CustomTextStyle.size20black,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: CustomTextField(
                              controller: controller.emailController,
                              label: "example@example.com",
                              obscureText: false,
                              onChanged: (value) {
                                controller.validateEmailorNumber(value);
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
                            child: Obx(
                          () => CustomTextField(
                              controller: controller.passwordController,
                              label: "*************",
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    controller.togglePasswordVisibility();
                                  },
                                  icon: Icon(controller.obscurePassword.value
                                      ? Icons.visibility_off_outlined
                                      : Icons.visibility_outlined)),
                              obscureText: controller.obscurePassword.value,
                              onChanged: (value) {
                                controller.validatePassword(value);
                              },
                              errorText: controller.passwordError),
                        ))
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 10, top: 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () {
                              controller.navigateToforget();
                            },
                            child: Text(
                              AppString.forgetPasswordTxt,
                              style: CustomTextStyle.size12blue,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: AppColors.white,
                height: screenHeight * 2 / 6,
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
                              buttontext: AppString.login,
                              buttonColor: AppColors.bluemain,
                              textColor: AppColors.white,
                              onTap: () {
                                if (controller.isFormValid.value) {
                                  Get.snackbar('Login', 'Succesfully Login');
                                  controller.navigateToHome();
                                  controller.clearAllFields();
                                } else {
                                  Get.snackbar('Validation Error',
                                      'Please fill in all required fields correctly');
                                }
                              },
                              margin: EdgeInsets.only(top: 1)),
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
                          child: FittedBox(
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
                        ),
                        Expanded(
                            flex: 2,
                            child: SizedBox(
                              width: screenwidth * 2 / 3,
                            )),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 25),
                      child: Row(
                        children: [
                          Expanded(flex: 1, child: SizedBox()),
                          Expanded(
                            flex: 2,
                            child: FittedBox(
                              child: Row(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        AppString.signuptext2,
                                        style: CustomTextStyle.size12black,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          controller.navigateToSignup();
                                        },
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
      ),
    );
  }
}
