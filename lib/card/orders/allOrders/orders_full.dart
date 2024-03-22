import 'package:elfori_shop_mobi/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'order_details.dart';

class OrderFull extends StatefulWidget {
  const OrderFull({super.key});

  @override
  State<OrderFull> createState() => _OrderFullState();
}

class _OrderFullState extends State<OrderFull> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('СІЧЕНЬ 2024',
          style: TextStyle(
            fontSize: 14,
            color: AppColors.grey,
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
                    Text('Прийнято',style: TextStyle(
                        color: AppColors.black,
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
                  width: MediaQuery.of(context).size.width - 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                    border: Border.all(color: AppColors.lightGrey.withOpacity(0.2)),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Get.to(()=>OrderDetails());
                    },
                    child: Text(
                      'ДЕТАЛІ',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),

              ],
            ),
          ),
          SizedBox(height: 20,),
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
                    Text('Доставлено',style: TextStyle(
                        color: AppColors.black,
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
                  width: MediaQuery.of(context).size.width - 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                    border: Border.all(color: AppColors.lightGrey.withOpacity(0.2)),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Get.to(()=>OrderDetails());
                    },
                    child: Text(
                      'ДЕТАЛІ',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),

              ],
            ),
          ),
          SizedBox(height: 20,),
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
                  width: MediaQuery.of(context).size.width - 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                    border: Border.all(color: AppColors.lightGrey.withOpacity(0.2)),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Get.to(()=>OrderDetails());
                    },
                    child: Text(
                      'ДЕТАЛІ',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
