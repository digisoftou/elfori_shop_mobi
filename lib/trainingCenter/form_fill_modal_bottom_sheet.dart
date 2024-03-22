import 'package:elfori_shop_mobi/colors.dart';
import 'package:flutter/material.dart';

class FormFillBottomSheet extends StatefulWidget {
  const FormFillBottomSheet({super.key});

  @override
  State<FormFillBottomSheet> createState() => _FormFillBottomSheetState();
}

class _FormFillBottomSheetState extends State<FormFillBottomSheet> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20), // Заокруглення верхнього лівого кута
          topRight: Radius.circular(20), // Заокруглення верхнього правого кута
        ),
        color: AppColors.white
      ),
      //color: Colors.white,
      child: Container(
        margin: EdgeInsets.only(top: 50, left: 30,right: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Center(
                  child: Text(
                    'ФОРМА ЗАПОВНЕННЯ',
                    style: TextStyle(
                      color: AppColors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 20),
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  decoration: InputDecoration(
                    filled: true, // Заповнений фон
                    fillColor: Colors.white, // Білий фон
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8), // Задайте желаний радіус закруглення кутів
                      borderSide: BorderSide(color: AppColors.lightGrey), // Сірий контур
                    ),
                    hintText: 'Ім\'я', // Текст підказки
                    hintStyle: TextStyle(color: AppColors.grey), // Сірий колір тексту підказки
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                    filled: true, // Заповнений фон
                    fillColor: Colors.white, // Білий фон
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8), // Задайте желаний радіус закруглення кутів
                      borderSide: BorderSide(color: AppColors.lightGrey), // Сірий контур
                    ),
                    hintText: 'Номер телефону', // Текст підказки
                    hintStyle: TextStyle(color: AppColors.grey), // Сірий колір тексту підказки
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                    filled: true, // Заповнений фон
                    fillColor: Colors.white, // Білий фон
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8), // Задайте желаний радіус закруглення кутів
                      borderSide: BorderSide(color: AppColors.lightGrey), // Сірий контур
                    ),
                    hintText: 'Місто', // Текст підказки
                    hintStyle: TextStyle(color: AppColors.grey), // Сірий колір тексту підказки
                  ),
                ),
              ],
            ),

            Column(
              children: [
                ElevatedButton(
                  onPressed: null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4), // Задайте желаемый радиус скругления углов
                    ),
                    fixedSize: Size(screenSize.width, 50),
                  ),
                  child: Text('ВІДПРАВИТИ',
                    style: TextStyle(
                        color: AppColors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 14
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Text('Натискаючи на кнопку “Відправити”, я погоджуюсь з політикою обробки персональних даних',
                  style: TextStyle(
                    color: AppColors.grey,

                  ),
                ),
                SizedBox(height: 10,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
