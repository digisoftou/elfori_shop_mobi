import 'package:elfori_shop_mobi/catalogue/filters/checks/area_of_using_button.dart';
import 'package:elfori_shop_mobi/catalogue/filters/checks/made_for_button.dart';
import 'package:elfori_shop_mobi/catalogue/filters/checks/sorting_buttons.dart';
import 'package:elfori_shop_mobi/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class AllFilters extends StatefulWidget {
  const AllFilters({super.key});

  @override
  State<AllFilters> createState() => _AllFiltersState();
}

class _AllFiltersState extends State<AllFilters> {

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        leading: GestureDetector(
          onTap: (){
            Get.back();
          },
          child: Icon(Icons.close,
            color: AppColors.black,
          ),
        ),
        title: Container(
          margin: EdgeInsets.only(left: screenSize.width/4),
            child: Text('Фільтри',
              style: TextStyle(
                color: AppColors.black,
                fontSize: 20
              ),
            )),
        actions: [
          TextButton(
              onPressed: (){},
              child: Text('Очистити',
                style: TextStyle(
                    color: AppColors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 18
                ),))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('СОРТУВАННЯ',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: AppColors.black
                ),
              ),
              SortingRadio(),
              SizedBox(height: 30,),
              Row(
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
              SizedBox(height: 30,),
              Text('ЗОНА ЗАСТОСУВАННЯ',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: AppColors.black
                ),
              ),
              AreaOfUsingCheck(),
              SizedBox(height: 30,),
              Text('ЦІНА',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: AppColors.black
                ),
              ),
              Text('Ціну вказано в гривнях',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColors.grey
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 2 - 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      border: Border.all(color: Colors.grey),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Від',
                        hintStyle: TextStyle(
                          color: AppColors.grey,
                          fontWeight: FontWeight.w400,
                        ),
                        contentPadding: EdgeInsets.all(15),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: MediaQuery.of(context).size.width / 2 - 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      border: Border.all(color: Colors.grey),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'До',
                        hintStyle: TextStyle(
                          color: AppColors.grey,
                          fontWeight: FontWeight.w400,
                        ),
                        contentPadding: EdgeInsets.all(15),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 30,),
              Text('ВИКОРИСТАННЯ',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: AppColors.black
                ),
              ),
              MadeForCheck(),

          ]
        )
        ),
      ),
      bottomSheet: Container(
        width: screenSize.width,
        height: screenSize.height/10,
        color: AppColors.white,
        padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 20),
        child: ElevatedButton(
          onPressed: () {
           // Get.toNamed('/enter');
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4), // Задайте желаемый радиус скругления углов
            ),
            fixedSize: Size(screenSize.width, 50),
          ),
          child: Text('ПОКАЗАТИ ВСІ ТОВАРИ (10)',
            style: TextStyle(
                color: AppColors.white,
                fontWeight: FontWeight.w600,
                fontSize: 14
            ),
          ),
        ),
      ),
    );
  }
}
