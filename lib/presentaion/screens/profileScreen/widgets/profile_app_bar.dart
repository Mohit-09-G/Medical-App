import 'package:flutter/material.dart';
import 'package:health_app/config/app_colors.dart';
import 'package:health_app/config/customtextstyle.dart';

class ProfileAppBar extends StatelessWidget {
  final String barname;
  const ProfileAppBar({super.key, required this.barname});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.white,
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: AppColors.bluemain,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  barname,
                  style: CustomTextStyle.size24blue,
                )
              ],
            ),
          ),
          Expanded(flex: 1, child: SizedBox())
        ],
      ),
    );
  }
}
