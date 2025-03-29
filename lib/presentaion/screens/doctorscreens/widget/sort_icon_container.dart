import 'package:flutter/material.dart';
import 'package:health_app/config/app_colors.dart';

class SortIconContainer extends StatelessWidget {
  final String name;
  final VoidCallback? onTap;
  final TextStyle textStyle;
  final Color? color;
  const SortIconContainer(
      {super.key,
      required this.name,
      required this.textStyle,
      this.color,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: color ?? AppColors.bluemain,
            borderRadius: BorderRadius.circular(12)),
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
      ),
    );
  }
}
