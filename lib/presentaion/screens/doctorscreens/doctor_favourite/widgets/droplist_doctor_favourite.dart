import 'package:flutter/material.dart';
import 'package:health_app/config/app_colors.dart';
import 'package:health_app/config/app_images.dart';
import 'package:health_app/config/customtextstyle.dart';
import 'package:health_app/presentaion/screens/doctorscreens/doctor-info/widget/blue_baground.dart';
import 'package:health_app/presentaion/screens/doctorscreens/doctor-info/widget/white_baground_container.dart';
import 'package:health_app/presentaion/screens/doctorscreens/doctor_favourite/widgets/drop_list_container.dart';

class DroplistDoctorFavourite extends StatelessWidget {
  final String listname;
  const DroplistDoctorFavourite({super.key, required this.listname});

  @override
  Widget build(BuildContext context) {
    return BlueBaground(
      padding: EdgeInsets.all(0),
      name: Column(
        children: [
          ExpansionTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  spacing: 5,
                  children: [
                    Image.asset(
                      AppImages.heartrating,
                      height: 15,
                      color: AppColors.white,
                    ),
                    Text(
                      listname,
                      style: CustomTextStyle.size16white,
                    ),
                  ],
                ),
              ],
            ),
            trailing: WhiteBagroundContainerText(
                padding: EdgeInsets.all(0),
                name: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: AppColors.bluemain,
                )),
            children: <Widget>[
              ListTile(
                title: DropListContainer(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
