import 'package:elfori_shop_mobi/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FaceStory extends StatelessWidget {
  const FaceStory({Key? key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.grey,
      body: Container(
        height: screenSize.height,
        width: screenSize.width,
        child: Image.asset(
          'assets/images/stories1.jpg',
          width: screenSize.width,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
