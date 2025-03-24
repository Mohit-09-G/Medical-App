import 'package:flutter/material.dart';
import 'package:health_app/presentaion/screens/doctorscreens/widget/doctor_screen_appbar.dart';

class DoctorScreen extends StatelessWidget {
  const DoctorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(40), child: DoctorScreenAppbar()),
    );
  }
}
