import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../colors.dart';

class Directions extends StatelessWidget {
  const Directions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 40, left: 30, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      Get.back();
                    },
                    child: SvgPicture.asset(
                      'assets/icons/direction=left.svg',
                      color: AppColors.black,
                    ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'ПОШУК',
                        hintStyle: TextStyle(
                            color: AppColors.grey,
                            fontSize: 20,
                            fontWeight: FontWeight.w500
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: AppColors.grey), // Колір підкреслення
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: AppColors.grey), // Колір підкреслення
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40,),
              Text('НАПРЯМКИ',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: AppColors.black
                ),
              ),
              SizedBox(height: 30,),
              GestureDetector(
                onTap: (){
                  //Get.toNamed('/cooperation');
                },
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'ВСІ',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: AppColors.black
                        ),
                      ),
                      SvgPicture.asset(
                        'assets/icons/icon_arrow.svg',
                        color: AppColors.black,
                        height: 20,
                      ),
        
                    ]
                ),
              ),
              SizedBox(height: 30,),
              GestureDetector(
                onTap: (){
                  //Get.toNamed('/cooperation');
                },
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'ДОМАШНІЙ ДОГЛЯД',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: AppColors.black
                        ),
                      ),
                      SvgPicture.asset(
                        'assets/icons/icon_arrow.svg',
                        color: AppColors.black,
                        height: 20,
                      ),
        
                    ]
                ),
              ),
              SizedBox(height: 30,),
              GestureDetector(
                onTap: (){
                  //Get.toNamed('/cooperation');
                },
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'ПРОФЕСІЙНИЙ ДОГЛЯД',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: AppColors.black
                        ),
                      ),
                      SvgPicture.asset(
                        'assets/icons/icon_arrow.svg',
                        color: AppColors.black,
                        height: 20,
                      ),
        
                    ]
                ),
              ),
              SizedBox(height: 30,),
              GestureDetector(
                onTap: (){
                  //Get.toNamed('/cooperation');
                },
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'ПРОФЕСІЙНИЙ ДОГЛЯД',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: AppColors.black
                        ),
                      ),
                      SvgPicture.asset(
                        'assets/icons/icon_arrow.svg',
                        color: AppColors.black,
                        height: 20,
                      ),
        
                    ]
                ),
              ),
              SizedBox(height: 30,),
              GestureDetector(
                onTap: (){
                  //Get.toNamed('/cooperation');
                },
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'ПІЛІНГИ',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: AppColors.black
                        ),
                      ),
                      SvgPicture.asset(
                        'assets/icons/icon_arrow.svg',
                        color: AppColors.black,
                        height: 20,
                      ),
        
                    ]
                ),
              ),
              SizedBox(height: 30,),
              GestureDetector(
                onTap: (){
                  //Get.toNamed('/cooperation');
                },
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'МЕЗОКОКТЕЙЛІ',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: AppColors.black
                        ),
                      ),
                      SvgPicture.asset(
                        'assets/icons/icon_arrow.svg',
                        color: AppColors.black,
                        height: 20,
                      ),
        
                    ]
                ),
              ),
              SizedBox(height: 30,),
              GestureDetector(
                onTap: (){
                  //Get.toNamed('/cooperation');
                },
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'БУСТЕР-РЕВАТРЛІЗАЦІЯ',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: AppColors.black
                        ),
                      ),
                      SvgPicture.asset(
                        'assets/icons/icon_arrow.svg',
                        color: AppColors.black,
                        height: 20,
                      ),
        
                    ]
                ),
              ),
        
              SizedBox(height: 30,),
              GestureDetector(
                onTap: (){
                  //Get.toNamed('/cooperation');
                },
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'ЛІПОЛІТИКА',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: AppColors.black
                        ),
                      ),
                      SvgPicture.asset(
                        'assets/icons/icon_arrow.svg',
                        color: AppColors.black,
                        height: 20,
                      ),
        
                    ]
                ),
              ),
              SizedBox(height: 30,),
              GestureDetector(
                onTap: (){
                  //Get.toNamed('/cooperation');
                },
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'ЗАСОБИ ДЛЯ МАСАЖУ',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: AppColors.black
                        ),
                      ),
                      SvgPicture.asset(
                        'assets/icons/icon_arrow.svg',
                        color: AppColors.black,
                        height: 20,
                      ),
        
                    ]
                ),
              ),
              SizedBox(height: 30,),
              GestureDetector(
                onTap: (){
                  //Get.toNamed('/cooperation');
                },
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'ДЕКОРАТИВНА КОСМЕТИКА',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: AppColors.black
                        ),
                      ),
                      SvgPicture.asset(
                        'assets/icons/icon_arrow.svg',
                        color: AppColors.black,
                        height: 20,
                      ),
        
                    ]
                ),
              ),
              SizedBox(height: 30,),
              GestureDetector(
                onTap: (){
                  //Get.toNamed('/cooperation');
                },
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'ДОГЛЯД ЗА ВОЛОССЯМ',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: AppColors.black
                        ),
                      ),
                      SvgPicture.asset(
                        'assets/icons/icon_arrow.svg',
                        color: AppColors.black,
                        height: 20,
                      ),
        
                    ]
                ),
              ),
        
            ],
          ),
        ),
      ),
    );
  }
}
