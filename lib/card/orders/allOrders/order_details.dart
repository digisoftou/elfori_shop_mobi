import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../colors.dart';
import '../../../models/products.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({super.key});

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
          child: Container(
            padding: EdgeInsets.all(10),
            child: SvgPicture.asset(
            'assets/icons/direction=left.svg',
            color: AppColors.black,
                    ),
          ),
        ),
        title: Center(
          child: Text('Замовлення #32268',
            style: TextStyle(
                color: AppColors.black,
                fontSize: 20
            ),
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Деталі замовлення',
              style: TextStyle(
                fontSize: 18,
                color: AppColors.grey,
                fontWeight: FontWeight.w500
              ),),
            SizedBox(height: 10,),
            Container(
                padding: EdgeInsets.all(20),
                width: screenSize.width - 40,
                decoration: BoxDecoration(
                  color: Colors.white, // Білий фон
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Colors.grey[300]!, // Сірий контур
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Замовлення #33568',style: TextStyle(
                            color: AppColors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600
                        ),),
                        Text('10.01.2024',style: TextStyle(
                            color: AppColors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.w400
                        ),),
                      ],
                    ),
                    SizedBox(height: 20,),
                    //
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Статус',style: TextStyle(
                            color: AppColors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.w400
                        ),),
                        Text('Оплачено',style: TextStyle(
                            color: AppColors.green,
                            fontSize: 18,
                            fontWeight: FontWeight.w600
                        ),),
                      ],
                    ),
                    SizedBox(height: 10,),
                    //
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Сума замовлення',style: TextStyle(
                            color: AppColors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.w400
                        ),),
                        Text('1920 грн',style: TextStyle(
                            color: AppColors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600
                        ),),
                      ],
                    ),
                    SizedBox(height: 20,),
                    //
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Товари',style: TextStyle(
                            color: AppColors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.w400
                        ),),
                        Text('2 товари',style: TextStyle(
                            color: AppColors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600
                        ),),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: screenSize.height/2,
                      width: screenSize.width-40,
                      child: ListView.builder(
                          itemCount: products.length,
                          itemBuilder: (context, index){
                            final product = products[index];
                            return Container(
                              margin: EdgeInsets.only(top: 20),
                              width: 150,
                              height: 150,
                              child: Row(
                                children: [

                                  Container(
                                    height: 130,
                                    width: 100,
                                    color: Colors.red,
                                    child:
                                    Image.asset(
                                      product.imageAsset,
                                      fit: BoxFit.cover,
                                      height: 40, // Ось де ви можете встановити бажану висоту карточки
                                      width: double.infinity,
                                    ),
                                  ),
                                  SizedBox(width: 20,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                          width: screenSize.width/2,
                                          child: Text(product.title,
                                            style: TextStyle(
                                                color: AppColors.black,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 16
                                            ),)),
                                      SizedBox(height: 7,),
                                      Text(product.subtitle,
                                        style: TextStyle(
                                            color: AppColors.grey,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12
                                        ),),
                                      SizedBox(height: 5,),
                                      Text('${product.discountedPrice.toString()} \u20B4',
                                        style: TextStyle(
                                            color: AppColors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14
                                        ),),

                                    ],
                                  )
                                ],
                              ),
                            );
                          }),
                    ),
        
                  ],
                ),
              ),
        
          ],
        ),
      ),
    );
  }
}
