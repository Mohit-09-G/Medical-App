import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:health_app/config/app_colors.dart';
import 'package:health_app/config/app_routes.dart';
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
          child: AppbarCommon(title: AppString.setpassword, ontap: () {})),
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
              mainAxisAlignment: MainAxisAlignment.start,
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
                      child: CustomTextField(
                          controller: controller.emailController,
                          label: "**********",
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
                      AppString.confirmpasswordText,
                      style: CustomTextStyle.size20black,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: CustomTextField(
                          controller: controller.emailController,
                          label: "*************",
                          obscureText: false,
                          onChanged: (value) {
                            print(value);
                          },
                          errorText: controller.emailError),
                    )
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OvalButtons(
                        buttontext: AppString.createPasswordtxt,
                        buttonColor: AppColors.bluemain,
                        textColor: AppColors.white,
                        onTap: () {},
                        margin:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 20))
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
