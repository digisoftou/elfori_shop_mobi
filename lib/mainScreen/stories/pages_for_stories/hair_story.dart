import 'package:elfori_shop_mobi/colors.dart';
import 'package:flutter/material.dart';

class HairStory extends StatelessWidget {
  const HairStory({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.grey,
      body:  Container(
        height: screenSize.height,
        width: screenSize.width,
        child: Image.asset(
          'assets/images/stories2.jpg',
          width: screenSize.width,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
