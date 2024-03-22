import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  route(){
    Get.toNamed('/home');
  }

  startTimer(){
    var duration = const Duration(seconds: 2);
    return Timer(duration, route);
  }


  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFF000000),
      body: Center(
        child: SvgPicture.asset(
          'assets/images/logo.svg',
          width: 2*screenSize.width/3,
          // height: 100,
        ),
      ),
    );
  }
}
