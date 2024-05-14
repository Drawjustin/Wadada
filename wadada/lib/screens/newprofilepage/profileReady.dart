import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wadada/common/const/colors.dart';
import 'package:wadada/screens/newprofilepage/layout.dart';

class ProfileReady extends StatelessWidget {
  const ProfileReady({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height * 0.9;
    return Scaffold(
        body: SafeArea(
            child: Container(
      width: screenWidth, // Set container width to screen width
      height: screenHeight, // Set container height to screen height
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 50,
          ),
          Text("안녕하세요!",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
          Image.asset('assets/images/Love-You.png'),
          TextButton(
            onPressed: () {
              Get.to(NewProfileLayout());
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                  GREEN_COLOR), // Set background color
              foregroundColor:
                  MaterialStateProperty.all(Colors.white), // Set text color
              textStyle: MaterialStateProperty.all(
                  TextStyle(fontSize: 18)), // Set text style
              padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                  vertical: 20, horizontal: 100)), // Set padding
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))), // Set button shape
            ),
            child: Text('프로필 만들러 가기'),
          )
        ],
      ),
    )));
  }
}
