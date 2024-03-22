import 'package:flutter/material.dart';

import '../../colors.dart';

class EnterTabPage extends StatefulWidget {
  const EnterTabPage({super.key});

  @override
  State<EnterTabPage> createState() => _EnterTabPageState();
}

class _EnterTabPageState extends State<EnterTabPage> {
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
        height: screenSize.height,
        width: screenSize.width,
        margin: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                width: screenSize.width,
                child: Text('Користуйтеся\nперсональними знижками \nта отримуйте подарунки',
                  style: TextStyle(
                      color: AppColors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w600
                  ),
                )),
            SizedBox(height: 40,),
            TextField(
              controller: phoneNumberController,
              decoration: InputDecoration(
                filled: true, // Заповнений фон
                fillColor: Colors.white, // Білий фон
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8), // Задайте желаний радіус закруглення кутів
                  borderSide: BorderSide(color: AppColors.lightGrey), // Сірий контур
                ),
                hintText: 'Номер телефону', // Текст підказки
                hintStyle: TextStyle(color: Colors.grey), // Сірий колір тексту підказки
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                filled: true, // Заповнений фон
                fillColor: Colors.white, // Білий фон
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8), // Задайте желаний радіус закруглення кутів
                  borderSide: BorderSide(color: AppColors.lightGrey), // Сірий контур
                ),
                hintText: 'Пароль', // Текст підказки
                hintStyle: TextStyle(color: Colors.grey), // Сірий колір тексту підказки
              ),
            ),
            TextButton(
                onPressed: (){},
                child: Text('Забули пароль?',
                  style: TextStyle(
                      color: AppColors.black,
                      fontSize: 16
                  ),)),
            SizedBox(height: screenSize.height/5,),
            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: null,
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4), // Задайте желаемый радиус скругления углов
                  ),
                  fixedSize: Size(screenSize.width, 50),
                ),
                child: Text('УВІЙТИ',
                  style: TextStyle(
                      color: AppColors.grey,
                      fontWeight: FontWeight.w600,
                      fontSize: 14
                  ),
                ),
              ),
            ),
            Text('Натискаючи на кнопку “Увійти”, я погоджуюсь з політикою обробки персональних даних',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w100,
                color: AppColors.lightGrey,
              ),
            )

          ],
        )
    );
  }
}
