import 'package:elfori_shop_mobi/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class PersonalProfile extends StatefulWidget {
  const PersonalProfile({super.key});

  @override
  State<PersonalProfile> createState() => _PersonalProfileState();
}

class _PersonalProfileState extends State<PersonalProfile> {

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Container(
        margin: EdgeInsets.only(top: 80, left: 30, right: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: Text('Профіль',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black
                  ),
                ),
              ),
              SizedBox(height: 10,),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed('/enter');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4), // Задайте желаемый радиус скругления углов
                  ),
                  fixedSize: Size(screenSize.width, 50),
                ),
                child: Text('УВІЙТИ',
                  style: TextStyle(
                      color: AppColors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 14
                  ),
                ),
              ),
              SizedBox(height: 50,),
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  'Навчальний центр',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                      color: AppColors.black
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(bottom: 10),
                child: Text(
                  'Навчайтеся мистецтву краси з нашими курсами',
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 12,
                      color: AppColors.grey
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0), // Виберіть бажаний радіус заокруглення
                ),
                child: Image.asset(
                  'assets/images/training1.png',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 10,),
              ElevatedButton(
                onPressed: () {
                   Get.toNamed('/trainingCenter');
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
                child: Text('ДЕТАЛЬНІШЕ',
                  style: TextStyle(
                      color: AppColors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 14
                  ),
                ),
              ),
              SizedBox(height: 50,),
              GestureDetector(
                onTap: (){
                  Get.toNamed('/allOrders');
                },
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'МОЇ ЗАМОВЛЕННЯ',
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
              SizedBox(height: 50,),
              GestureDetector(
                onTap: (){
                  Get.toNamed('/allMessages');
                },
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'МОЇ ПОВІДОМЛЕННЯ',
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
              //about us
              SizedBox(height: 50,),
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  'ПРО НАС',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: AppColors.grey
                  ),
                ),
              ),
              SizedBox(height: 30,),
              GestureDetector(
                onTap: (){
                  Get.toNamed('/aboutCompany');
                },
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'ПРО КОМПАНІЮ',
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
                  Get.toNamed('/cooperation');
                },
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'СПІВПРАЦЯ',
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
                    Get.toNamed('/news');
                },
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'НОВИНИ',
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
                  Get.toNamed('/vacancies');
                },
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'ВАКАНСІЇ',
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

              //about products
              SizedBox(height: 50,),
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  'ПРО ПРОДУКЦІЮ',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: AppColors.grey
                  ),
                ),
              ),
              SizedBox(height: 30,),
              GestureDetector(
                onTap: (){
                  Get.toNamed('/deliveryAndPayment');
                },
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'ДОСТАВКА І ОПЛАТА',
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

                },
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'ПОВЕРНЕННЯ І ЗАМІНА',
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


              //contacts
              SizedBox(height: 50,),
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  'КОНТАКТИ',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: AppColors.grey
                  ),
                ),
              ),
              SizedBox(height: 30,),
              GestureDetector(
                onTap: (){
                  Get.toNamed('/representations');

                },
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'ПРЕДСТАВНИЦТВА',
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

                },
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'ГРАФІК РОБОТИ',
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
          
          
            ],
          ),
        ),
      )
    );
  }
}
