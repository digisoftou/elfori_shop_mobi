import 'package:elfori_shop_mobi/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        leading: Container(
          margin: EdgeInsets.all(10),
          child: GestureDetector(
            onTap: (){
              Get.back();
            },
            child: SvgPicture.asset(
              'assets/icons/direction=left.svg',
              color: AppColors.black,
            ),
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(30),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                'Новини',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 26,
                    color: AppColors.black
                ),
              ),
            ),
            SizedBox(height: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: screenSize.width,
                  //color: Colors.red,
                  child: Image.asset('assets/images/charity1.jpg',
                    fit: BoxFit.cover,//
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text(
                    'Благодійний фонд "Формат 20"',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                // Get.toNamed('/trainingCenter');
              },
              style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: AppColors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4), // Задайте желаемый радиус скругления углов
                ),
                fixedSize: Size(screenSize.width, 50),
                side: BorderSide(color: AppColors.grey.withOpacity(0.3), width: 1),
              ),
              child: Text('ДЕТАЛЬНО',
                style: TextStyle(
                    color: AppColors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 14
                ),
              ),
            ),

          ],
        ),

      ),

    );
  }
}
