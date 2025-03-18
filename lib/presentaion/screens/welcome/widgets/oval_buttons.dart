import 'package:flutter/material.dart';

class OvalButtons extends StatelessWidget {
  final String buttontext;
  final Color buttonColor;
  final Color textColor;
  final VoidCallback onTap;
  final EdgeInsetsGeometry margin;

  const OvalButtons({
    super.key,
    required this.buttontext,
    required this.buttonColor,
    required this.textColor,
    required this.onTap,
    required this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: margin,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          shape: BoxShape.rectangle,
          color: buttonColor,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Text(
            buttontext,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: textColor,
              fontSize: 24,
              height: 1,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
