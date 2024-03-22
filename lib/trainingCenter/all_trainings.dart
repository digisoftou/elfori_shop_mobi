import 'package:elfori_shop_mobi/colors.dart';
import 'package:elfori_shop_mobi/trainingCenter/miniBlocks/spickers_block.dart';
import 'package:elfori_shop_mobi/trainingCenter/schedule_of_seminard_empty.dart';
import 'package:elfori_shop_mobi/trainingCenter/schedule_of_seminars_full.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../models/EventItem.dart';
import 'miniBlocks/assistant_block.dart';

class TrainingCenter extends StatelessWidget {
  const TrainingCenter({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    List<String> wordsList = ['Місяць', 'Місто','Бренд', 'Напрямок', 'Формат'];
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 30, top: 10),
                child: Text(
                  'Навчальний центр',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                      color: AppColors.black
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 30,bottom: 20),
                child: Text(
                  'Навчайтеся мистецтву краси з нашими курсами',
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 12,
                      color: AppColors.grey
                  ),
                ),
              ),
              Container(
                width: screenSize.width,
                child: Image.asset(
                  'assets/images/training1.png',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 30, top: 30),
                child:Text(
                  'ГРАФІК СЕМІНАРІВ',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: AppColors.black
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, top: 10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: wordsList.map((word) {
                      return Container(
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: AppColors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(2),
                        ),
                        child: Text(
                          word,
                          style: TextStyle(
                              color: AppColors.black,
                              fontWeight: FontWeight.w500,
                            fontSize: 16
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
             // ScheduleOfSeminarsEmpty()
              //todo
              ScheduleOfSeminarsFull(),
              //
              SpickersBlock(),

              Container(
                margin: EdgeInsets.only(left: 30, top: 30),
                child:Text(
                  'НАВЧАЛЬНИЙ ЦЕНТР СТАНЕ ВАШИМ КОРИСНИМ ПОМІЧНИКОМ',
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
                  'Швидким трампліном для розвитку, мотиватором та підтримкою. І ось в чому:',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: AppColors.grey
                  ),
                ),
              ),

              AssistantBlock(),
              Container(
                margin: EdgeInsets.only(left: 30, top: 30),
                child:Text(
                  'ELFORI готує майстрів своєї справи (акредитованих спеціалістів у сфері краси)',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: AppColors.black
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 30, bottom:20, right: 20),
                child:Text(
                  '- Косметологів (з щонайменше середньою медичною освітою);\n- Косметологів без медичної освіти (з підтвердженим практичним досвідом роботи у сфері краси не менше трьох років);\n- Перукарів/колористів\nТакий підхід забезпечує найвищу якість навчання та чудово зарекомендував себе на практиці. Здійсність свою мрію про роботу в індустрії краси!\nДля отримання базової освіти косметолога та підтримки своїх знань та навичок, дипломованим косметологам необхідно знати, який пакет документів потрібно зібрати та як організувати процес навчання. Ось, що потрібно надати для навчання:\n- документ, що засвідчує особу;\n- диплом про середню або вищу медичну освіту;\n- сертифікат або диплом косметолога (це не обов\'язковий пункт, якщо у вас є вища медична освіта);\n- довідку з місця роботи та підтвердження досвіду роботи в косметології від 3-х років (у випадку, якщо ви не маєте диплома про середню або вищу медичну освіту).\nНаші студенти мають змогу працювати з різними косметичними брендами та продуктами. Це допоможе вам зрозуміти відмінності між засобами та визначити, котрі з них найбільш підходять вам і вашим клієнтам. Ви навчитеся працювати з різними типами шкіри, виявляти проблеми зі здоров’ям волосся, надавати професійні консультації та здобудете багато інших корисних навичок.\nКосметологи отримують сертифікат про допуск до роботи з продукцією HL після проходження базової програми онлайн-навчання та успішного складання іспиту за всіма вивченими темами. Варто також зазначити, що фахівці з чинним сертифікатом мають змогу відвідувати безкоштовні курси підвищення кваліфікації та семінари на різні теми',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: AppColors.black
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),

            ],
          ),
      ),
    );
  }
}
