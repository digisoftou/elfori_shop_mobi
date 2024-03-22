import 'package:flutter/material.dart';

import '../../colors.dart';

class SpickersBlock extends StatelessWidget {
  const SpickersBlock({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: 30, top: 30),
          child:Text(
            'НАШІ СПІКЕРИ',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                color: AppColors.black
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 30, bottom:20),
          child:Text(
            'Спеціалісти, які готові ділитися знаннями заради Вашого здоров\'я та краси',
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: AppColors.grey
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),
          width: screenSize.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: AppColors.grey.withOpacity(0.3),
              width: 1,
            ),
          ),
          child: Column(
            children: [
              Image.asset('assets/images/spiker1.jpg'),
              Container(
                margin: EdgeInsets.only(left: 30, top: 30),
                child:Text(
                  'ДАР\'Я ВОЛЯК',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: AppColors.black
                  ),
                ),

              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                margin: EdgeInsets.only(left: 30, bottom:20),
                child:Text(
                  'Лікар-дерматолог вищої категорії спеціаліст з Anti-Age терапії',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: AppColors.grey
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),
          width: screenSize.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: AppColors.grey.withOpacity(0.3),
              width: 1,
            ),
          ),
          child: Column(
            children: [
              Image.asset('assets/images/spiker2.jpg'),
              Container(
                margin: EdgeInsets.only(left: 30, top: 30),
                child:Text(
                  'ВІКТОРІЯ ШЕВЧЕНКО',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: AppColors.black
                  ),
                ),

              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                margin: EdgeInsets.only(left: 30, bottom:20),
                child:Text(
                  'Технолог бренду Emmebi Italia в Україні. Викладач, колорист. Проходила навчання в Італії',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: AppColors.grey
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
