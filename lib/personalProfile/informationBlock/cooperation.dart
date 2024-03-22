import 'package:elfori_shop_mobi/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Cooperation extends StatelessWidget {
  const Cooperation({super.key});

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
                  'Співпраця',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 26,
                      color: AppColors.black
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                width: screenSize.width,
                child: Text('Ми запрошуємо до співпраці косметологів, салони та клініки краси.\nELFORI Group є офіційним імпортером та дистриб\'ютором в Україні таких торгових марок: Holy land (Ізраїль), Brilace (Франція), Nanorma (Франція) та Emmebi Italia. Всі препарати для догляду сертифіковані в Україні та високої якості. Ми гарантуємо Вам ефект від використання засобів для догляду за шкірою обличчя, тіла та волосся. \nСпівпраця із ELFORI відкриває унікальні можливості:\n- Спеціальні ціни та програми лояльності для партнерів-спеціалістів, що дає можливість робити покупки професійної косметики в нашому інтернет-магазині ще більш приємнішими: ми цінуємо тривалі відносини і хочемо, щоб вони були для вас вигіднішими;\n- Допомога менеджерів та on-line консультацію методиста-косметолога з підбору засобів; \n- Професійний ріст та розвиток завдяки семінарам та майстер-класам в Навчальному центрі;\n- Впевненість у вчасності поставок по всіх містах України\n- Сайт ELFORI дозволяє працювати за системою дропшипінгу у вигляді виписки рецепту клієнту із накопиченням балів (гривень), які можна обміняти на товар.\nДля того, щоб зареєструватися на нашому порталі, необхідно прикріпити сертифікат проходження базового курсу навчання з професійного використання препаратів наших брендів. Якщо ж Ви не проходили у нас навчальні курси, тоді запрошуємо прослухати майстер-класи та скористатися можливостями Навчального Центру.\nТакож пропонуємо підписатись на наш канал у ютуб, сторінки в інстаграм і фейсбук.',
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.black.withOpacity(0.7),
                  ),
                  textAlign: TextAlign.justify,//
                ),
        
              ),
              SizedBox(height: 40,),
              Container(
                alignment: Alignment.topLeft,
                child: Text('Як отримати прайс косметолога?',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                width: screenSize.width,
                child: Text('Щоб отримати прайс спеціаліста (косметолога), необхідно пройти базовий курс навчання професійного використання препаратів. Дізнатися розклад майстер класів та записатися, можна зателефонувавши торговому представнику у Києві чи регіонах України. ',
                    style: TextStyle(
                    fontSize: 16,
                    color: AppColors.black.withOpacity(0.7),
                  ),
                  textAlign: TextAlign.justify,//
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
                child: Text('НАШІ КОНТАКТИ',
                  style: TextStyle(
                      color: AppColors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 14
                  ),
                ),
              ),
              SizedBox(height: 50,),
              Container(
                alignment: Alignment.topLeft,
                child: Text('Які терміни придатності продукції?',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                width: screenSize.width,
                child: Text('Всі препарати для догляду сертифіковані в Україні, високої якості та з актуальними термінами придатності.',style: TextStyle(
                    fontSize: 16,
                    color: AppColors.black.withOpacity(0.7),
                  ),
                  textAlign: TextAlign.justify,//
                ),

              ),
              SizedBox(height: 50,),


              Container(
                alignment: Alignment.topLeft,
                child: Text('Вис справді офіційний інтернет-магазин?',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                width: screenSize.width,
                child: Text('ELFORI Group є офіційним імпортером та дистриб\'ютором в Україні таких торгових марок: Holy land (Ізраїль), Brilace (Франція), Nanorma (Франція) та Emmebi Italia (Італія).',
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.black.withOpacity(0.7),
                  ),
                  textAlign: TextAlign.justify,//
                ),

              ),


            ],
          ),
          
        ),
      )
    );
  }
}
