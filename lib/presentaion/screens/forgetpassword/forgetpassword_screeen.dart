import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:health_app/config/app_colors.dart';

import 'package:health_app/config/app_string.dart';
import 'package:health_app/config/customtextstyle.dart';
import 'package:health_app/presentaion/controller/forgetpassword/forgetpassword_controller.dart';
import 'package:health_app/presentaion/screens/login/widgets/appbar.dart';
import 'package:health_app/presentaion/screens/login/widgets/custom_input_text_field.dart';
import 'package:health_app/presentaion/screens/welcome/widgets/oval_buttons.dart';

class ForgetpasswordScreeen extends StatefulWidget {
  const ForgetpasswordScreeen({super.key});

  @override
  State<ForgetpasswordScreeen> createState() => _ForgetpasswordScreeenState();
}

late ForgetpasswordController controller;

class _ForgetpasswordScreeenState extends State<ForgetpasswordScreeen> {
  @override
  void initState() {
    controller = Get.find<ForgetpasswordController>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppbarCommon(
              title: AppString.setpassword,
              ontap: () {
                controller.back();
              })),
      body: Padding(
        padding: EdgeInsets.only(left: 30, right: 30),
        child: Column(
          spacing: 40,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Expanded(child: Text(AppString.passwordTextsreen))
                  ],
                ),
              ],
            ),
            Column(
              spacing: 25,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
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
                              label: "**********",
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
                  ],
                ),
                Column(
                  spacing: 3,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          AppString.confirmpasswordText,
                          style: CustomTextStyle.size20black,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Obx(
                          () => CustomTextField(
                              controller: controller.confirmapasswordController,
                              label: "*************",
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    controller.togglePasswordVisibility2();
                                  },
                                  icon: Icon(
                                      controller.obscurePasswordConfirm.value
                                          ? Icons.visibility_off_outlined
                                          : Icons.visibility_outlined)),
                              obscureText:
                                  controller.obscurePasswordConfirm.value,
                              onChanged: (value) {
                                controller.validateconfrimPassword(value);
                              },
                              errorText: controller.confirmPasswordError),
                        ))
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                    flex: 1,
                    child: OvalButtons(
                      buttontext: AppString.createPasswordtxt,
                      buttonColor: AppColors.bluemain,
                      textColor: AppColors.white,
                      onTap: () {
                        if (controller.checkPasswordMatch()) {
                          Get.snackbar("Done", 'Password Changed Successfully');
                          controller.clearAllFields();
                        } else {
                          Get.snackbar('Failed', 'Password Doesn\'t Match');
                        }
                      },
                      margin: EdgeInsets.only(top: 10, left: 17, right: 17),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
