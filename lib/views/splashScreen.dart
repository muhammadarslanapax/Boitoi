import 'dart:async';
import 'package:boitoi/routes/routes_name.dart';
import 'package:boitoi/utlils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class SlashScreen extends StatefulWidget {
  const SlashScreen({super.key});

  @override
  State<SlashScreen> createState() => _SlashScreenState();
}

class _SlashScreenState extends State<SlashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Get.offAllNamed(Routes.dashboard);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: primarycolor,
        body: SizedBox(
          width: width,
          height: height,
          child: Center(
            child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/splash_logo.png"))),
            ),
          ),
        ));
  }
}
