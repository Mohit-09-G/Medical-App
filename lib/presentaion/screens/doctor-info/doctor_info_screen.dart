import 'package:flutter/material.dart';
import 'package:health_app/presentaion/screens/doctor-info/widget/doctor_info_card.dart';

class DoctorInfoScreen extends StatelessWidget {
  const DoctorInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(40), child: SizedBox.shrink()),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [DoctorInfoCard()],
        ),
      ),
    );
  }
}
