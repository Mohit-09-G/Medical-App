import 'package:flutter/material.dart';

class CircularImageContainer extends StatelessWidget {
  final String imageAsset;

  const CircularImageContainer({super.key, required this.imageAsset});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.all(6.0),
        child: Image.asset(
          imageAsset,
        ),
      ),
    );
  }
}
