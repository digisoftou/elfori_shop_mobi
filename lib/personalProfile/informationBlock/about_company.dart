import 'package:elfori_shop_mobi/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class AboutCompany extends StatelessWidget {
  const AboutCompany({super.key});

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
                    'Про компанію',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 26,
                        color: AppColors.black
                    ),
                  ),
                ),
                SizedBox(height: 20,),

                Container(
                  alignment: Alignment.topLeft,
                  child: Text('ELFORI GROUP – якісна косметика від професійних брендів! ',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: screenSize.width,
                  child: Text('Професійна косметика – широкий вибір за багатьма критеріями. Такі засоби мають продуманий та збалансований склад, доведену ефективність, а також безпеку застосування. Місце, де можна вигідно купити гарантовано оригінальну продукцію іменитих брендів – це інтернет-магазин косметики ELFORI.',
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.black.withOpacity(0.7),
                    ),
                    textAlign: TextAlign.justify,//
                  ),

                ),


              ],
            ),

          ),

    );
  }
}
