
import 'package:elfori_shop_mobi/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'checks/another_recipient_button.dart';
import 'checks/delivery_buttons.dart';
import 'checks/payment_buttons.dart';
import 'checks/phone_check_button.dart';
import 'checks/without_invoice_button.dart';
import 'order_placed.dart';

class MakeOrder extends StatefulWidget {
  const MakeOrder({super.key});

  @override
  State<MakeOrder> createState() => _MakeOrderState();
}

class _MakeOrderState extends State<MakeOrder> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.backgroundGrey,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundGrey,
        leading: GestureDetector(
          onTap: (){
            Get.back();
          },
          child: Icon(Icons.close,
            color: AppColors.black,
          ),
        ),
        title: Center(
          child: Text('Оформлення замовлення',
                style: TextStyle(
                    color: AppColors.black,
                    fontSize: 20
                ),
              ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Замовник',
                      style: TextStyle(
                        color: AppColors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 26
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text('Загальна інформація',
                      style: TextStyle(
                          color: AppColors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 16
                      ),
                    ),
                    SizedBox(height: 10,),
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: AppColors.backgroundGrey),
                        ),
                        hintText: 'Дмитрій',
                        hintStyle: TextStyle(color: AppColors.grey),
                      ),
                    ),
                    SizedBox(height: 10,),
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: AppColors.backgroundGrey),
                        ),
                        hintText: 'Гирявенко',
                        hintStyle: TextStyle(color: AppColors.grey),
                      ),
                    ),

                    SizedBox(height: 15,),
                    Text('Email',
                      style: TextStyle(
                          color: AppColors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 16
                      ),
                    ),
                    SizedBox(height: 10,),
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: AppColors.backgroundGrey),
                        ),
                        hintText: 'Дмитрій',
                        hintStyle: TextStyle(color: AppColors.grey),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              SizedBox(height: 15,),
              Text('КОМЕНТАР',
                style: TextStyle(
                    color: AppColors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 16
                ),
              ),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child:TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: AppColors.backgroundGrey),
                        ),
                        hintText: 'Введіть коментар',
                        hintStyle: TextStyle(color: AppColors.grey),
                      ),
                    ),


              ),

              //
              SizedBox(height: 20,),
              Text('ВАРІАНТИ ДОСТАВКИ',
                style: TextStyle(
                    color: AppColors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 16
                ),
              ),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child:DeliveryButtons()


              ),
              SizedBox(height: 20,),
              Text('ВАРІАНТИ ОПЛАТИ',
                style: TextStyle(
                    color: AppColors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 16
                ),
              ),
              SizedBox(height: 10,),
              Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child:PaymentButtons()


              ),
              SizedBox(height: 15,),
              Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                child: PhoneCheckButton(),

              ),
              SizedBox(height: 15,),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: WithoutInvoiceButton(),

              ),
              SizedBox(height: 15,),
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.only(bottom: 30),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: AnotherRecipientButton(),

              ),
              SizedBox(height: 80,),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        padding: EdgeInsets.all(20),
        width: screenSize.width,
        height: 130,
        color: AppColors.white,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Всього до сплати',
                  style: TextStyle(
                    color: AppColors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 14
                  ),
                ),
                Text('1,449.00 \u20B4',
                  style: TextStyle(
                      color: AppColors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 16
                  ),
                )
              ],
            ),
            SizedBox(height: 10,),
            ElevatedButton(
              onPressed: (){
                Get.to(()=>OrderWasPlaced());
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4), // Задайте желаемый радиус скругления углов
                ),
                fixedSize: Size(screenSize.width, 50),
              ),
              child: Text('ОФОРМИТИ ЗАМОВЛЕННЯ',
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
