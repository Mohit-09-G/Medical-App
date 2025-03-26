import 'package:flutter/material.dart';
import 'package:health_app/config/app_colors.dart';

class BlueBaground extends StatelessWidget {
  final Widget name;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  const BlueBaground(
      {super.key, required this.name, this.margin, this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: AppColors.bluemain,
          borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: padding ?? EdgeInsets.all(10),
        child: name,
      ),
    );
  }
}
