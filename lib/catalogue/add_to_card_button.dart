import 'package:flutter/material.dart';

import '../colors.dart';

class AddToCardButton extends StatefulWidget {
  const AddToCardButton({super.key});

  @override
  State<AddToCardButton> createState() => _AddToCardButtonState();
}

class _AddToCardButtonState extends State<AddToCardButton> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width,
      height: screenSize.height/10,
      color: AppColors.white,
      padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: screenSize.width/5,
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
              child: Icon(
                Icons.remove,
                color: AppColors.white,
              )
            ),
          ),
          Container(
            width: 50+screenSize.width/3,
            //color: AppColors.grey.withOpacity(0.3),
              decoration: BoxDecoration(
                color: AppColors.grey.withOpacity(0.3),
                borderRadius: BorderRadius.circular(8), // Заокруглення кутів
              ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Text('2 434,00 \u20B4 (2)',
                  style: TextStyle(
                    color: AppColors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500
                  ),),
                Text('в кошику',
                  style: TextStyle(
                      color: AppColors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.w400
                  ),),
              ],
            )
          ),
          Container(
            width: screenSize.width/5,
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
                child: Icon(
                  Icons.add,
                  color: AppColors.white,
                )
            ),
          ),
        ],
      )

      // ElevatedButton(
      //   onPressed: () {
      //     // Get.toNamed('/enter');
      //   },
      //   style: ElevatedButton.styleFrom(
      //     backgroundColor: AppColors.black,
      //     shape: RoundedRectangleBorder(
      //       borderRadius: BorderRadius.circular(4), // Задайте желаемый радиус скругления углов
      //     ),
      //     fixedSize: Size(screenSize.width, 50),
      //   ),
      //   child: Text('ДОДАТИ ДО КОШИКА',
      //     style: TextStyle(
      //         color: AppColors.white,
      //         fontWeight: FontWeight.w600,
      //         fontSize: 14
      //     ),
      //   ),
      // ),
    );
  }
}
