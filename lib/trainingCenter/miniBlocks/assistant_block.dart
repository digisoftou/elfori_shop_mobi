import 'package:flutter/material.dart';

import '../../colors.dart';

class AssistantBlock extends StatelessWidget {
  const AssistantBlock({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),
          width: screenSize.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: AppColors.grey.withOpacity(0.3),
              width: 1,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 30, top: 10),
                child:Text(
                  'ПРЕСТИЖ І ДОВІРА',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: AppColors.black
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 30, bottom:20),
                child:Text(
                  'Понад 25 років працюємо в індустрії краси, всі наші продукти є високим стандартом якості',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: AppColors.grey
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),
          width: screenSize.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: AppColors.grey.withOpacity(0.3),
              width: 1,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 30, top: 10),
                child:Text(
                  'СУЧАСНІ МЕТОДИКИ',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: AppColors.black
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 30, bottom:20),
                child:Text(
                  'Експерти Elfori діляться найактуальнішою інформацією про потрібні техніки та секретами, які використовують в роботі, щоби клієнт залишився задоволеним',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: AppColors.grey
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),
          width: screenSize.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: AppColors.grey.withOpacity(0.3),
              width: 1,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 30, top: 10),
                child:Text(
                  'ОТРИМАННЯ СТАТУСУ ПАРТНЕРА',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: AppColors.black
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 30, bottom:20),
                child:Text(
                  'Завдяки цьому ви ще більше поринете в світ косметології та будете обізнані в найпопулярніших сферах.',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: AppColors.grey
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),
          width: screenSize.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: AppColors.grey.withOpacity(0.3),
              width: 1,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 30, top: 10),
                child:Text(
                  'НЕОБХІДНІ ЗНАННЯ У ДОСТУПНІЙ ФОРМІ',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: AppColors.black
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 30, bottom:20),
                child:Text(
                  'Тут легко поставити запитання та отримати відповідь, підвищувати кваліфікацію, зростати разом з нами і стати експертом в сфері естетичної медицини та косметології.',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: AppColors.grey
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
