import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/config/app_colors.dart';
import 'package:health_app/config/customtextstyle.dart';

class Datecustomfiled extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final bool obscureText;
  final TextInputType? keyboardType;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final GestureTapCallback? onTap;

  final Function(String) onChanged;
  final RxString errorText;

  const Datecustomfiled(
      {super.key,
      required this.controller,
      required this.label,
      required this.obscureText,
      this.keyboardType,
      this.suffixIcon,
      required this.onChanged,
      required this.errorText,
      this.prefixIcon,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          onTap: onTap,
          obscureText: obscureText,
          onChanged: (value) {
            onChanged(value);
          },
          controller: controller,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
            hintText: label,
            hintStyle: TextStyle(color: AppColors.texthintblue),
            fillColor: AppColors.boxFill,
            filled: true,
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white, // White border color
              ),
              borderRadius: BorderRadius.circular(13), // 5px border radius
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.boxFill, // White border color on focus
              ),
              borderRadius: BorderRadius.circular(13), // 5px border radius
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.boxFill, // White border color when not focused
              ),
              borderRadius: BorderRadius.circular(13), // 5px border radius
            ),
            labelText: null,
            labelStyle: CustomTextStyle.size20blue,
          ),
        ),
        Obx(() => errorText.value.isNotEmpty
            ? Row(
                children: [
                  Text(
                    errorText.value,
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                      color: Colors.red,
                      fontSize: 10,
                    ),
                  ),
                ],
              )
            : const SizedBox.shrink()),
      ],
    );
  }
}
