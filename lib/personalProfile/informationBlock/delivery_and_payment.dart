import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../colors.dart';

class DeliveryPayment extends StatelessWidget {
  const DeliveryPayment({super.key});

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
                'Доставка та оплата',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 26,
                    color: AppColors.black
                ),
              ),
            ),
            SizedBox(height: 20,),

            Container(
              width: screenSize.width,
              child: Text('Варіанти доставки:\n1. Доставка перевізником «НОВА ПОШТА» до Києва та регіонів\n2. Доставка нашим кур\'єром по Києву\n3. Відправка по ТТН клієнта\n4. Самовивіз (м. Київ)\nВаріанти оплати:\n1. Готівка\n2. При отриманні на пошті (Нова Пошта)\n3. На рахунок\n4. Оплата Онлайн (Liqpay)',
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
