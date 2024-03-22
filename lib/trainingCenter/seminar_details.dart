import 'package:elfori_shop_mobi/colors.dart';
import 'package:elfori_shop_mobi/trainingCenter/form_fill_modal_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../models/EventItem.dart';

class SeminarDetails extends StatefulWidget {
  const SeminarDetails({super.key});

  @override
  State<SeminarDetails> createState() => _SeminarDetailsState();
}

class _SeminarDetailsState extends State<SeminarDetails> {
  late EventItem item;

  @override
  void initState() {
    super.initState();
    item = Get.arguments;
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        leading: Container(
          margin: EdgeInsets.all(12),
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
        actions: [
          Container(
            margin: EdgeInsets.only(right: 20),
            height: 30,
            width: 30,
            child: GestureDetector(
              onTap: (){
                //Get.back();
              },
              child: SvgPicture.asset(
                'assets/icons/icon_share.svg',
                color: AppColors.black,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                  height: screenSize.width,
                  margin: EdgeInsets.only(bottom: 40),
                  width: screenSize.width,
                  child: Image.asset('assets/images/semi1.png',
                    fit: BoxFit.cover,
                  )),
              Container(
                padding: EdgeInsets.all(20),
                width: screenSize.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: AppColors.grey.withOpacity(0.3),
                    width: 1,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/images/trainingsLogo.png'),
                        SizedBox(width: 20,),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                  children:
                                  [
                                    Container(
                                      padding: EdgeInsets.only(top: 8, bottom: 8, left: 13, right: 13),
                                      decoration: BoxDecoration(
                                        color: AppColors.grey.withOpacity(0.3),
                                        borderRadius: BorderRadius.circular(8), // Заокруглення кутів
                                      ),
                                      child: Text(item.date,
                                        style: TextStyle(
                                            color: AppColors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14
                                        ),),
                                    ),
                                    SizedBox(width: 10,),
                                    Container(
                                      padding: EdgeInsets.only(top: 8, bottom: 8, left: 13, right: 13),
                                      decoration: BoxDecoration(
                                        color: AppColors.grey.withOpacity(0.3),
                                        borderRadius: BorderRadius.circular(8), // Заокруглення кутів
                                      ),
                                      child: Text(item.format,
                                        style: TextStyle(
                                            color: AppColors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14
                                        ),),
                                    ),
                                  ]
                              ),
                              SizedBox(height: 5,),
                              Container(
                                padding: EdgeInsets.only(top: 8, bottom: 8, left: 13, right: 13),
                                decoration: BoxDecoration(
                                  color: AppColors.grey.withOpacity(0.3),
                                  borderRadius: BorderRadius.circular(8), // Заокруглення кутів
                                ),
                                child: Text(item.city,
                                  style: TextStyle(
                                      color: AppColors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14
                                  ),),
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text(item.speaker,
                        style: TextStyle(
                            color: AppColors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600
                        ),),
                    ),
                    Container(
                      child: Text(item.speakerDetails,
                        style: TextStyle(
                            color: AppColors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w400
                        ),),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 100),
                padding: EdgeInsets.all(20),
                width: screenSize.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: AppColors.grey.withOpacity(0.3),
                    width: 1,
                  ),
                ),
                child: Text(
                  'Програма семінару:\nНовинки сезону\nОчищення шкіри, нова філософія підбору від французької школи\nЛінійки anti-age терапії: особливості та результати догляду До/Після. Пептиди, золото, стовбурові клітини, водорості та інше.\nМиттєві результати з унікальними препаратами бренду.\nПідбір домашнього догляду',
                  style: TextStyle(
                      color: AppColors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400
                  ),
                ),
              ),


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
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return FormFillBottomSheet();
                  },
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4), // Задайте желаемый радиус скругления углов
                ),
                fixedSize: Size(screenSize.width, 50),
              ),
              child: Text('ЗАПИСАТИСЯ',
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

