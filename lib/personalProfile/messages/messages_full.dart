import 'package:flutter/material.dart';

import '../../colors.dart';

class MessagesFull extends StatelessWidget {
  const MessagesFull({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.only(top: 20),
            width: screenSize.width - 40,
            decoration: BoxDecoration(
              color: Colors.white, // Білий фон
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: Colors.grey[300]!, // Сірий контур
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text('🎉 Найгарячіші ЗНИЖКИ на косметику тільки для вас! 🎁',
                  style: TextStyle(
                    color: AppColors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600
                ),),
                SizedBox(height: 10,),
                Text('Завітайте до нашого додатку прямо зараз і отримайте ексклюзивні знижки до -30% на обрані косметичні продукти! 💄✨',
                  style: TextStyle(
                    color: AppColors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w400
                ),
                textAlign: TextAlign.justify,
                ),
                SizedBox(height: 10,),
                Text('12 cічня',
                     style: TextStyle(
                      color: AppColors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.w400
                  ),
                  textAlign: TextAlign.justify,
                ),
                //


              ],
            ),
          ),
        ],
      ),
    );
  }
}
