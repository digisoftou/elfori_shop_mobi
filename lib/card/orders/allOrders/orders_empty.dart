import 'package:elfori_shop_mobi/colors.dart';
import 'package:flutter/material.dart';

class OrdersEmpty extends StatefulWidget {
  const OrdersEmpty({super.key});

  @override
  State<OrdersEmpty> createState() => _OrdersEmptyState();
}

class _OrdersEmptyState extends State<OrdersEmpty> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width,
      height: screenSize.width,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Поки немає замовлень',
              style: TextStyle(
                  color: AppColors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600
              ),),
            SizedBox(height: 10,),
            Container(
              width: 2*screenSize.width/3,
              child: Text('Твої замовлення будуть відображатися в цій секції',
                style: TextStyle(
                  color: AppColors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 30,),
            Container(
              //width: MediaQuery.of(context).size.width - 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
                border: Border.all(color: AppColors.lightGrey.withOpacity(0.2)),
              ),
              child: TextButton(
                onPressed: () {
                },
                child: Text(
                  'ПЕРЕГЛЯНУТИ ТОВАРИ',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
