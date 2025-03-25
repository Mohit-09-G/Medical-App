import 'package:flutter/material.dart';
import 'package:health_app/config/app_colors.dart';

class SortIconContainer extends StatelessWidget {
  final String name;
  final TextStyle textStyle;
  const SortIconContainer(
      {super.key, required this.name, required this.textStyle});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.bluemain, borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 3),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              name,
              style: textStyle,
            )
          ],
        ),
      ),
    );
  }
}
