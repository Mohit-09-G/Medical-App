import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/config/app_colors.dart';
import 'package:health_app/config/customtextstyle.dart';
import 'package:health_app/presentaion/controller/dialog/dialog_contoller.dart';
import 'package:health_app/presentaion/screens/home/widgets/widgets/home_app_bar.dart';
import 'package:health_app/presentaion/screens/login/widgets/custom_input_text_field.dart';
import 'package:health_app/presentaion/screens/welcome/widgets/oval_buttons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

DialogContoller dialogContoller = Get.put(DialogContoller());

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Doctor Details", style: CustomTextStyle.size16),
                IconButton(
                  icon: Icon(Icons.close, color: Colors.black),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
            SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Doctor Name", style: CustomTextStyle.size14),
                CustomTextField(
                  controller: dialogContoller.docnameController,
                  label: "Enter Name",
                  obscureText: false,
                  onChanged: (value) {
                    dialogContoller.validateName(value);
                  },
                  errorText: dialogContoller.doctornameerror,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Doctor Speciality", style: CustomTextStyle.size14),
                CustomTextField(
                  controller: dialogContoller.docspecialityController,
                  label: "Enter Speciality",
                  obscureText: false,
                  onChanged: (value) {
                    dialogContoller.validateSpeciality(value);
                  },
                  errorText: dialogContoller.doctorspecialtyerror,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Education", style: CustomTextStyle.size14),
                CustomTextField(
                  controller: dialogContoller.doceducationController,
                  label: "Enter Education",
                  obscureText: false,
                  onChanged: (value) {
                    dialogContoller.validateeducation(value);
                  },
                  errorText: dialogContoller.doctoreducationrror,
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: OvalButtons(
                    buttontext: "Upload",
                    buttonColor: AppColors.bluemain,
                    textColor: Colors.white,
                    onTap: () {
                      if (dialogContoller.isFormValid.value) {
                        dialogContoller.newEntryDailog();
                        print("done");
                      } else {
                        print("a");
                      }
                    },
                    margin: EdgeInsets.all(0),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
