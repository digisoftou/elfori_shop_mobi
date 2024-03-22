import 'package:elfori_shop_mobi/colors.dart';
import 'package:elfori_shop_mobi/models/vacancies_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Vacancies extends StatelessWidget {
  const Vacancies({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        leading: Container(
          margin: EdgeInsets.all(10),
          child: GestureDetector(
            onTap: (){
              Get.back();
            },
            child: SvgPicture.asset(
              'assets/icons/direction=left.svg',
              color: AppColors.black,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(30),
          child: Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  'Вакансія',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 26,
                      color: AppColors.black
                  ),
                ),
              ),
              SizedBox(height: 40,),
              Container(
                width: screenSize.width,
                child: Image.asset(
                  'assets/images/vacancies2.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height:40,),
              Container(
                alignment: Alignment.topLeft,
                child: Text('ELFORI GROUP – якісна косметика від професійних брендів! ',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                width: screenSize.width,
                child:
                Text.rich(
                  TextSpan(
                    style: TextStyle(
                      fontSize: 16.0, // Задайте бажаний розмір тексту
                    ),
                    children: [
                      TextSpan(
                          text: ' ELFORI GROUP – команда однодумців, об’єднаних любов’ю до краси, сучасної естетики та розвитку. Компанія, якій вдалося поєднати світові бренди, офіційний дистриб\'ютор Holy Land Always Active, Brilace, Nanorma та Emmebi Italia. Понад 25 років працюємо в індустрії краси, всі наші продукти є високим стандартом якості\nМи постійно розширюємось та оновлюємо асортимент, впроваджуємо сучасні методики в роботі. На сьогоднішній день 24 регіональні представництва дозволяють ELFORI GROUP забезпечувати український б’юті-ринок сертифікованими препаратами та проводити освітні заходи для підвищення кваліфікації та професіоналізму фахівців у галузі естетичної медицини та перукарського мистецтва.',

                      ),
                      TextSpan(
                        text: '\nКомпанія надає всі умови, щоб Ви могли комфортно працювати:', // Перше слово
                        style: TextStyle(
                          fontWeight: FontWeight.bold, // Жирний стиль для першого слова
                        ),
                      ),
                      TextSpan(
                          text: '\n- Навчання та підтримку кандидата на початкових етапах;\n- Постійний розвиток у вигляді тренінгів, де професійні спікери-практики діляться найактуальнішою інформацією про потрібні техніки, авторські методики та протоколи проведення процедур для досягнення найкращого результату для клієнта;\n- Приємні бонуси: корпоративна знижка на покупку професійної косметики, дружній колектив, оплачувана відпустка, лікарняний та додаткові вихідні, подарунки на свята.',
                      ),
                    ],
                  ),
                  textAlign: TextAlign.justify,

                )


                // Text(style: TextStyle(
                //     fontSize: 16,
                //     color: AppColors.black.withOpacity(0.7),
                //   ),
                //   textAlign: TextAlign.justify,//
                // ),
        
              ),
              SizedBox(height: 50,),
              Container(
                alignment: Alignment.topLeft,
                child: Text('ЦЕНТРАЛЬНИЙ ОФІС (М.КИЇВ)',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 22
                  ),
                ),
              ),
              SizedBox(height: 50,),
              Container(
                height: 700,
                width: screenSize.width,
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: vacanciesList.length,
                    itemBuilder: (context, index){
                      return Container(
                        margin: EdgeInsets.only(bottom: 30),
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.grey.withOpacity(0.2)), // Контур чорного кольору
                          borderRadius: BorderRadius.circular(10.0), // Радіус заокруглення кутів (змініть на потрібний)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(vacanciesList[index].title,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: AppColors.black,
                              ),
                            ),
                            Text('Коротко про обов\'язки',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                color: AppColors.grey
                              ),
                            ),
                            Text(vacanciesList[index].description,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.grey
                              ),
                            ),
                            Text('Вимоги',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.grey
                              ),
                            ),
                            Text(vacanciesList[index].requirements,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.grey
                              ),
                            ),
                            SizedBox(height: 20,),
                            ElevatedButton(
                              onPressed: () {
                                // Get.toNamed('/trainingCenter');
                              },
                              style: ElevatedButton.styleFrom(
                                elevation: 0,
                                backgroundColor: AppColors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4), // Задайте желаемый радиус скругления углов
                                ),
                                fixedSize: Size(screenSize.width, 50),
                                side: BorderSide(color: AppColors.grey.withOpacity(0.3), width: 1),
                              ),
                              child: Text('ПОДАТИ ЗАЯВКУ',
                                style: TextStyle(
                                    color: AppColors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14
                                ),
                              ),
                            ),

                          ],
                        ),
                      );
                    }),
              )
        
            ],
          ),
        
        ),
      ),

    );
  }
}
