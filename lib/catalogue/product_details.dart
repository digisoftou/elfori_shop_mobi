import 'package:dotted_border/dotted_border.dart';
import 'package:elfori_shop_mobi/catalogue/add_to_card_button.dart';
import 'package:elfori_shop_mobi/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../models/products.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  late Product product;

  @override
  void initState() {
    super.initState();
    product = Get.arguments;
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
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 20),
                width: screenSize.width,
                height: 300,
                child: Image.asset(
                  product.imageAsset,
                  fit: BoxFit.cover,
                  height: 400, // Ось де ви можете встановити бажану висоту карточки
                  width: double.infinity,
                ),
              ),
              Text(product.title,
              style: TextStyle(
                color: AppColors.black,
                fontSize: 20,
                fontWeight: FontWeight.w400
              ),),
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 30),
                child: DottedBorder(
                  padding: EdgeInsets.all(10),
                  color: AppColors.grey,
                  strokeWidth: 0.8,
                  dashPattern: [2,4],
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('В наявності',
                            style: TextStyle(
                              color: AppColors.grey
                            ),),
                            Text('1 217,00 \u20B4',
                              style: TextStyle(
                                  color: AppColors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 22
                              ),),
                          ],
                        ),
                        Align(
                          alignment: Alignment.topRight,
                            child: Text('Код 837543',
                              style: TextStyle(
                                color: AppColors.grey
                            ),)
                        )
                      ],
                    ),
        
                ),
              ),
              Text('ЗАГАЛЬНА ІНФОРМАЦІЯ',
                style: TextStyle(
                    color: AppColors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600
                ),),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Об\'єм',
                    style: TextStyle(
                        color: AppColors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w400
                    ),),
                  Text('100 мл',
                    style: TextStyle(
                        color: AppColors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500
                    ),),
                ],
              ),
              SizedBox(height: 10,),
              Divider(
                height: 10,
                color: AppColors.lightGrey.withOpacity(0.2),
              ),
        
              //
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Зона застосування',
                    style: TextStyle(
                        color: AppColors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w400
                    ),),
                  Text('Волосся',
                    style: TextStyle(
                        color: AppColors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500
                    ),),
                ],
              ),
              SizedBox(height: 10,),
              Divider(
                height: 10,
                color: AppColors.lightGrey.withOpacity(0.2),
              ),
        
              //
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Вік',
                    style: TextStyle(
                        color: AppColors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w400
                    ),),
                  Text('18+',
                    style: TextStyle(
                        color: AppColors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500
                    ),),
                ],
              ),
              SizedBox(height: 10,),
              Divider(
                height: 10,
                color: AppColors.lightGrey.withOpacity(0.2),
              ),
        
              //
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Країна',
                    style: TextStyle(
                        color: AppColors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w400
                    ),),
                  Text('Італія',
                    style: TextStyle(
                        color: AppColors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500
                    ),),
                ],
              ),
              SizedBox(height: 10,),
              Divider(
                height: 10,
                color: AppColors.lightGrey.withOpacity(0.2),
              ),

              SizedBox(height: 20,),
              Text('ОПИС ТОВАРУ',
                style: TextStyle(
                    color: AppColors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600
                ),),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Опис',
                    style: TextStyle(
                        color: AppColors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w400
                    ),),
                  Text('+',
                    style: TextStyle(
                        color: AppColors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500
                    ),),
                ],
              ),
              SizedBox(height: 10,),
              Divider(
                height: 10,
                color: AppColors.lightGrey.withOpacity(0.2),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Застосування',
                    style: TextStyle(
                        color: AppColors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w400
                    ),),
                  Text('+',
                    style: TextStyle(
                        color: AppColors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500
                    ),),
                ],
              ),
              SizedBox(height: 10,),
              Divider(
                height: 10,
                color: AppColors.lightGrey.withOpacity(0.2),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Активні інгрідієнти',
                    style: TextStyle(
                        color: AppColors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w400
                    ),),
                  Text('+',
                    style: TextStyle(
                        color: AppColors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500
                    ),),
                ],
              ),
              SizedBox(height: 10,),
              Divider(
                height: 10,
                color: AppColors.lightGrey.withOpacity(0.2),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Відгуки',
                    style: TextStyle(
                        color: AppColors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w400
                    ),),
                  Text('+',
                    style: TextStyle(
                        color: AppColors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500
                    ),),
                ],
              ),
              SizedBox(height: 10,),
              Divider(
                height: 10,
                color: AppColors.lightGrey.withOpacity(0.2),
              ),
            ],
          )
        ),
      ),
      bottomSheet: AddToCardButton(),
    );
  }
}
