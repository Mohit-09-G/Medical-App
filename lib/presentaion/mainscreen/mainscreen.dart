import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/home_page.dart';

import 'package:health_app/presentaion/controller/mainscreen/mainscreen_controller.dart';
import 'package:health_app/presentaion/mainscreen/widgets/bottom_bar.dart';
import 'package:health_app/presentaion/screens/doctorscreens/doctor_screen.dart';
import 'package:health_app/presentaion/screens/home/home_screen.dart';

import 'package:health_app/presentaion/screens/login/login_screen.dart';

class Mainscreen extends StatelessWidget {
  Mainscreen({super.key});

  final List<Widget> pages = [
    HomeScreen(),
    LoginScreen(),
    DoctorScreen(),
    HomePage()
  ];

  @override
  Widget build(BuildContext context) {
    final MainscreenController controller = Get.put(MainscreenController());

    return Scaffold(
      body: Obx(() {
        return pages[controller.selectedIndex.value];
      }),
      bottomNavigationBar: BottomBar(),
    );
  }
}
