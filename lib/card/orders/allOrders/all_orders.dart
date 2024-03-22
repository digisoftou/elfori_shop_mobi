import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../colors.dart';
import 'orders_empty.dart';
import 'orders_full.dart';

class AllOrders extends StatefulWidget {
  const AllOrders({super.key});

  @override
  State<AllOrders> createState() => _AllOrdersState();
}

class _AllOrdersState extends State<AllOrders> {
  @override
  Widget build(BuildContext context) {
    final screenSize= MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: (){
            Get.back();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

                  Text('Мої замовлення ',
                    style: TextStyle(
                        color: AppColors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 26
                    ),),


              //todo: add if
              //OrdersEmpty(),
              OrderFull(),

              Text('Вас можуть зацікавити',
                style: TextStyle(
                    color: AppColors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 18
                ),),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start, // Выравнивание по левому краю
                        children: [
                          Image.asset(
                            'assets/images/product1.png',
                            width: screenSize.width / 3,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(height: 5),
                          Text(
                            'МОЛОЧКО ДЛЯ\nДЕМАКІЯЖУ КЛІТИННИЙ\nЕЛІКСИР',
                            softWrap: true,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),// Пространство между изображением и текстом
                          Text(
                            '0115 / 50 мл',
                            style: TextStyle(
                              color: AppColors.grey,
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            '1 134,00 \u20B4',
                            style: TextStyle(
                              color: AppColors.black,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 30,),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Image.asset('assets/images/product2.png',
                            width: screenSize.width/3,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            'ШАМПУНЬ З АРГАНОВОЮ\n ОЛІЄЮ',
                            softWrap: true,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5), // Пространство между изображением и текстом
                          Text(
                            '10311 / 250 мл',
                            style: TextStyle(
                              color: AppColors.grey,
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            '613,00 \u20B4',
                            style: TextStyle(
                              color: AppColors.black,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
