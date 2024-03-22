import 'package:elfori_shop_mobi/catalogue/subcategories/directions.dart';
import 'package:elfori_shop_mobi/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'hair.dart';

class SearchInCatalogue extends StatefulWidget {
  const SearchInCatalogue({super.key});

  @override
  State<SearchInCatalogue> createState() => _SearchInCatalogueState();
}

class _SearchInCatalogueState extends State<SearchInCatalogue> {
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
              TextField(
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
              SizedBox(height: 40,),
              Text('КАТЕГОРІЇ',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppColors.grey
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
                        'ОБЛИЧЧЯ',
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
                        'ТІЛО',
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Hair()),
                  );
                  //Get.toNamed('/cooperation');
                },
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'ВОЛОССЯ',
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
                        'ДЛЯ ЧОЛОВІКІВ',
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Directions()),
                  );
                 // Get.to(()=>Directions());
                  //Get.toNamed('/cooperation');
                },
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'НАПРЯМКИ',
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
                        'БРЕНДИ',
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
                        'АКЦІЇ',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: AppColors.red
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
