import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/config/app_colors.dart';
import 'package:health_app/config/app_images.dart';
import 'package:health_app/config/app_string.dart';
import 'package:health_app/config/customtextstyle.dart';
import 'package:health_app/presentaion/controller/profilescreen/updateProfile/update_profile_controller.dart';
import 'package:health_app/presentaion/screens/doctorscreens/doctor-info/widget/blue_baground.dart';
import 'package:health_app/presentaion/screens/login/widgets/custom_input_text_field.dart';
import 'package:health_app/presentaion/screens/login/widgets/datecustomfiled.dart';
import 'package:health_app/presentaion/screens/profileScreen/widgets/circular_blue_baground.dart';
import 'package:health_app/presentaion/screens/profileScreen/widgets/profile_app_bar.dart';

class UpdateProfileScreen extends StatefulWidget {
  const UpdateProfileScreen({super.key});

  @override
  State<UpdateProfileScreen> createState() => _UpdateProfileScreenState();
}

class _UpdateProfileScreenState extends State<UpdateProfileScreen> {
  UpdateProfileController controller = Get.put(UpdateProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(70), child: SizedBox.shrink()),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 40),
              child: ProfileAppBar(barname: "Profile"),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                spacing: 25,
                children: [
                  Column(
                    spacing: 5,
                    children: [
                      Stack(
                        alignment: Alignment(1.0, 0.9),
                        children: [
                          Image.asset(
                            AppImages.ratingDocimage,
                            height: 130,
                          ),
                          Positioned(
                              child: CircularBlueBackground(
                                  padding: EdgeInsets.all(6),
                                  name: Image.asset(
                                    AppImages.editIcon,
                                    height: 25,
                                  )))
                        ],
                      ),
                      Text(
                        AppString.profilename,
                        style: CustomTextStyle.size24blackw600,
                      )
                    ],
                  ),
                  Column(
                    spacing: 15,
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
                    ],
                  ),
                  BlueBaground(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                      name: Text(
                        "Update Profile",
                        style: CustomTextStyle.size24white500,
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
