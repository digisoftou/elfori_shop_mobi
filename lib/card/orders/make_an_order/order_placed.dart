import 'package:elfori_shop_mobi/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class OrderWasPlaced extends StatelessWidget {
  const OrderWasPlaced({super.key});

  @override
  Widget build(BuildContext context) {
   final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        leading: IconButton(
          icon: Icon(Icons.close,
          color: AppColors.black,
          ),
          onPressed: () {
            Get.toNamed('/home');
          },
        ),
      ),
      body: Container(
        height: 2*screenSize.height/3,
        child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/images/logo2.svg',
                  width: screenSize.width/8,
                  // height: 100,
                ),
                SizedBox(height: 70,),
                Text('Ваше замовленн прийнято',
                style: TextStyle(
                  color: AppColors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 24
                ),),
                SizedBox(height: 10,),
                Container(
                  width: screenSize.width - 80,
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: TextStyle(
                        color: AppColors.grey,
                        fontSize: 18,
                      ),
                      children: [
                        TextSpan(
                          text: 'Замовлення на суму ',
                        ),
                        TextSpan(
                          text: '1920 гривень',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppColors.black
                          ),
                        ),
                        TextSpan(
                          text: ' успішно прийнятою',
                        ),
                      ],
                    ),

                  ),
                ),
                Text('Очікуйте на дзвінок від нашого оператора',
                  style: TextStyle(
                    color: AppColors.grey,
                    fontSize: 18,
                  ),),

              ],
            ),

        ),
      ),
      bottomSheet: Container(
        padding: EdgeInsets.all(20),
        width: screenSize.width,
        height: 100,
        color: AppColors.white,
        child: Column(
          children: [
            ElevatedButton(
              onPressed: (){
                Get.toNamed('/allOrders');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4), // Задайте желаемый радиус скругления углов
                ),
                fixedSize: Size(screenSize.width, 50),
              ),
              child: Text('ПЕРЕГЛЯНУТИ ЗАМОВЛЕННЯ',
                style: TextStyle(
                    color: AppColors.white,
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
