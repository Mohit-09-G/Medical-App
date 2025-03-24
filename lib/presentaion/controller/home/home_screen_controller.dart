import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/home_page.dart';
import 'package:intl/intl.dart';

class HomeScreenController extends GetxController {
  RxList doctors = [
    {
      'name': 'Dr. John Doe',
      'specialty': 'Cardiologist',
      'image': 'assets/images/doctor1.png'
    },
    {
      'name': 'Dr. Jane Smith',
      'specialty': 'Neurologist',
      'image': 'assets/images/doctor2.png'
    },
    {
      'name': 'Dr. Alice Johnson',
      'specialty': 'Pediatrician',
      'image': 'assets/images/doctor3.png'
    },
    {
      'name': 'Dr. Bob Lee',
      'specialty': 'Orthopedic',
      'image': 'assets/images/doctor4.png'
    },
    {
      'name': 'Dr. William Brown',
      'specialty': 'Dentist',
      'image': 'assets/images/doctor5.png'
    },
    {
      'name': 'Dr. Olivia Clark',
      'specialty': 'Dermatologist',
      'image': 'assets/images/doctor6.png'
    },
    {
      'name': 'Dr. Lucas Walker',
      'specialty': 'General Surgeon',
      'image': 'assets/images/doctor7.png'
    },
    {
      'name': 'Dr. Emma Moore',
      'specialty': 'Gynecologist',
      'image': 'assets/images/doctor8.png'
    },
    {
      'name': 'Dr. Liam White',
      'specialty': 'Psychiatrist',
      'image': 'assets/images/doctor9.png'
    },
    {
      'name': 'Dr. Sophia Harris',
      'specialty': 'Endocrinologist',
      'image': 'assets/images/doctor10.png'
    },
    {
      'name': 'Dr. James Robinson',
      'specialty': 'Radiologist',
      'image': 'assets/images/doctor11.png'
    },
    {
      'name': 'Dr. Isabella Young',
      'specialty': 'Nephrologist',
      'image': 'assets/images/doctor12.png'
    },
    {
      'name': 'Dr. Mason King',
      'specialty': 'Gastroenterologist',
      'image': 'assets/images/doctor13.png'
    },
    {
      'name': 'Dr. Mia Adams',
      'specialty': 'Oncologist',
      'image': 'assets/images/doctor14.png'
    },
    {
      'name': 'Dr. Alexander Scott',
      'specialty': 'Pathologist',
      'image': 'assets/images/doctor15.png'
    },
    {
      'name': 'Dr. Charlotte Martinez',
      'specialty': 'Plastic Surgeon',
      'image': 'assets/images/doctor16.png'
    },
    {
      'name': 'Dr. Elijah Perez',
      'specialty': 'Urologist',
      'image': 'assets/images/doctor17.png'
    },
    {
      'name': 'Dr. Amelia Thompson',
      'specialty': 'Ophthalmologist',
      'image': 'assets/images/doctor18.png'
    },
    {
      'name': 'Dr. Benjamin Garcia',
      'specialty': 'Rheumatologist',
      'image': 'assets/images/doctor19.png'
    },
    {
      'name': 'Dr. Evelyn Martinez',
      'specialty': 'Hematologist',
      'image': 'assets/images/doctor20.png'
    },
  ].obs;

  RxList<DateTime> dateList = <DateTime>[].obs;

  RxInt currentStartIndex = 0.obs;

  late PageController pageController;

  @override
  void onInit() {
    super.onInit();

    dateList.value = getNext7day();
    pageController = PageController();
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }

  List<DateTime> getNext7day() {
    return List.generate(7, (index) {
      return DateTime.now()
          .add(Duration(days: currentStartIndex.value + index));
    });
  }

  void loadNext7Days() {
    currentStartIndex.value += 7;
    dateList.value = getNext7day();
  }

  String getFormattedDate(DateTime date) {
    return DateFormat('EEE').format(date);
  }

  String getFormattedDayNumber(DateTime date) {
    return DateFormat('d').format(date);
  }
}
