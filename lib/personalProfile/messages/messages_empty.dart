import 'package:flutter/material.dart';

import '../../colors.dart';

class MessagesEmpty extends StatelessWidget {
  const MessagesEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      height: 2*screenSize.height/3,
      width: screenSize.width,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Поки немає повідомлень',
              style: TextStyle(
                  color: AppColors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600
              ),),
            SizedBox(height: 10,),
            Container(
              width: 4*screenSize.width/5,
              child: Text('Повідомлення про новинки, акції, статуси замовлень будуть з\'являтися тут',
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
