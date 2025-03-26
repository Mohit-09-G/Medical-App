import 'package:flutter/material.dart';
import 'package:health_app/config/app_colors.dart';

class WhiteBagroundContainerText extends StatelessWidget {
  final Widget name;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  const WhiteBagroundContainerText(
      {super.key, required this.name, this.margin, this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: AppColors.white,
          borderRadius: BorderRadius.circular(13)),
      child: Padding(
        padding: padding ?? EdgeInsets.all(10.0),
        child: name,
      ),
    );
  }
}
