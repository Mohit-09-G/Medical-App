import 'package:flutter/material.dart';
import 'package:health_app/config/app_colors.dart'; // Assuming you have AppColors defined in your project

class CircularBlueBackground extends StatelessWidget {
  final Widget name;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Color? color;

  const CircularBlueBackground({
    super.key,
    required this.name,
    this.margin,
    this.padding,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color ?? AppColors.bluemain,
      ),
      child: Padding(
        padding: padding ?? EdgeInsets.all(10),
        child: name,
      ),
    );
  }
}
