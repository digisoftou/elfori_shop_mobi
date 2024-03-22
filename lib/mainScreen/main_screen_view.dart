import 'package:elfori_shop_mobi/colors.dart';
import 'package:elfori_shop_mobi/mainScreen/stories/story_circles.dart';
import 'package:elfori_shop_mobi/mainScreen/stories/story_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_instagram_stories/flutter_instagram_stories.dart';
import 'package:get/get.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  void _openStory(){
    Navigator.push(
        context, MaterialPageRoute(
        builder: (context)=>StoryPage(),
    ),
    );
  }

  List<String> storiesNames = [
    'Обличчя',
    'Волосся',
    'Тіло',
    'Чоловікам',
    'Бренди',
  ];

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: screenSize.width,
              child: Image.asset(
                'assets/images/imgStories.jpg',
                width: screenSize.width,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              height: screenSize.height / 8,
              child: Column(
                children: [
                  SizedBox(
                    height: 108,
                    child: ListView.builder(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index){
                        return Column(
                          children: [
                            StoryCircles(
                              function: _openStory,
                            ),
                            Text(storiesNames[index],
                              style: TextStyle(
                                fontWeight: FontWeight.w400
                              ),
                            ),
                          ],
                        );
                        },

                    ),
                  )
                ],
              )
            ),
            SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'НОВИНКИ ELFORI',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: AppColors.black
                    ),
                  ),
                  GestureDetector(
                    onTap: (){},
                    child: Row(
                      children: [
                        Text(
                          'ВСІ ',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              color: AppColors.grey
                          ),
                        ),
                        SvgPicture.asset(
                          'assets/icons/icon_arrow.svg',
                          color: AppColors.grey,
                          height: 18,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start, // Выравнивание по левому краю
                    children: [
                      Image.asset(
                        'assets/images/product1.png',
                        width: screenSize.width / 3,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 5),
                      Text(
                        'МОЛОЧКО ДЛЯ\nДЕМАКІЯЖУ КЛІТИННИЙ\nЕЛІКСИР',
                        softWrap: true,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),// Пространство между изображением и текстом
                      Text(
                        '0115 / 50 мл',
                        style: TextStyle(
                          color: AppColors.grey,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        '1 134,00 \u20B4',
                        style: TextStyle(
                          color: AppColors.black,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Image.asset('assets/images/product2.png',
                        width: screenSize.width/3,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        'ШАМПУНЬ З АРГАНОВОЮ\n ОЛІЄЮ',
                        softWrap: true,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5), // Пространство между изображением и текстом
                      Text(
                        '10311 / 250 мл',
                        style: TextStyle(
                          color: AppColors.grey,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        '613,00 \u20B4',
                        style: TextStyle(
                          color: AppColors.black,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 80,),
            //////////////////
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'ТОП ПРОДАЖІВ',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: AppColors.black
                    ),
                  ),
                  GestureDetector(
                    onTap: (){},
                    child: Row(
                      children: [
                        Text(
                          'ВСІ ',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              color: AppColors.grey
                          ),
                        ),
                        SvgPicture.asset(
                          'assets/icons/icon_arrow.svg',
                          color: AppColors.grey,
                          height: 18,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

            Container(
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/product3.png',
                  width: screenSize.width / 3,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 5),
                Text(
                  'ЛОСЬЙОН ДЛЯ ОБЛИЧЧЯ\nBOLDCARE STARTING',
                  softWrap: true,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '1501 / 150 мл',
                  style: TextStyle(
                    color: AppColors.grey,
                    fontSize: 12,
                  ),
                ),
                Text(
                  '1 743,00 \u20B4',
                  style: TextStyle(
                    color: AppColors.black,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
      ),


      Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Image.asset('assets/images/product4.png',
                        width: screenSize.width/3,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 5),
                      Text(
                        'ШАМПУНЬ МИТТЄВЕ\nВІДНОВЛЕННЯ',
                        softWrap: true,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),// Пространство между изображением и текстом
                      Text(
                        '10801 / 300 мл',
                        style: TextStyle(
                          color: AppColors.grey,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        '1 113,00 \u20B4',
                        style: TextStyle(
                          color: AppColors.black,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 50,),
            Container(
              width: screenSize.width,
              height: screenSize.width +100,
              color: AppColors.pink,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 30,left: 30, right: 10),
                    alignment: Alignment.topLeft,
                    child: Text(
                      'НАВЧАЛЬНИЙ ЦЕНТР ELFORI',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: AppColors.black
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 30, top: 10),
                    alignment: Alignment.topLeft,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.toNamed('/trainingCenter');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8), // Задайте желаемый радиус скругления углов
                        ),
                      ),
                      child: Text('Графік семінарів',
                        style: TextStyle(
                          color: AppColors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 14
                        ),
                      ), // Замените 'Нажми на меня' на ваш текст
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: NeverScrollableScrollPhysics(),
                    child: Container(
                      margin: EdgeInsets.only(left: 30, top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 300,
                                //color: Colors.red,
                                child: Image.asset('assets/images/billboard1.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                child: Text(
                                  'Місто: Київ / Офлайн\nСпікер: Дар\'я Воляк',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                child: Text(
                                  '31.01.2024 10:00',
                                  style: TextStyle(
                                    color: AppColors.grey,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 30,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 50,
                                height: 240,
                                color: Colors.red,
                                child: Image.asset('assets/images/billboard2.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                child: Text(
                                  'The han\nfit for we',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                child: Text(
                                  '31.01.2024 10:00',
                                  style: TextStyle(
                                    color: AppColors.grey,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )

        ],
              )
            ),
            SizedBox(height: 30,),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 30),
              child: Column(
                children: [
                  Text('ДОБРІ СПРАВИ',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: AppColors.black
                    ),),
                  SizedBox(height: 20,),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 30),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: NeverScrollableScrollPhysics(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 230,
                          //color: Colors.red,
                          child: Image.asset('assets/images/charity1.jpg',
                            fit: BoxFit.cover,//
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text(
                            'Благодійний фонд "Формат 20"',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 30,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 230,
                          //color: Colors.red,
                          child: Image.asset('assets/images/charity2.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text(
                            'Добрі справи від ELFORI',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 40,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              width: screenSize.width,
              child: Text('ОФІЦІЙНИЙ ДИСТРИБ\'ЮТОР ПРОФЕСІЙНИХ БРЕНДІВ ELFORI.COM',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: AppColors.black,
                ),),
            ),
            SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              width: screenSize.width,
              child: Text('Професійна косметика – широкий вибір за багатьма критеріями. Такі засоби мають продуманий та збалансований склад, доведену ефективність, а також безпеку застосування. Місце, де можна вигідно купити гарантовано оригінальну продукцію іменитих брендів – це інтернет-магазин косметики ELFORI. Філософія ELFORI – «Краса врятує світ», а отже, її потрібно внести у життя кожної людини. ELFORI GROUP – команда однодумців. Компанія, якій вдалося поєднати світові бренди, офіційний дистриб\'ютор Holy Land Always Active, Brilace, Nanorma та EMMEBI Italia. Ми прагнемо покращити б\'юті-сферу в Україні, навчити фахівців правильно користуватися професійними засобами, подбати про коректний догляд за собою в домашніх умовах. Професійна косметика від перевірених світових брендів, представлена в асортименті, дозволяє покращити стан шкіри, позбутися недоліків, попередити проблеми, а не лише боротися з наслідками. Тим, хто зацікавлений роботою у б\'юті-сфері, буде цікаво відвідати наші майстер-класи. Вони проводяться по всій Україні. Мета – навчити фахівців правильному використанню продукції для того, щоб поліпшити ефективність використання. Регулярно проводяться семінари, де фахівці, серед яких дерматологи, косметологи-естетисти, лікарі-ін\'єкціоністи, трихологи, перукарі, колористи зможуть отримати чимало корисної інформації. При цьому можна розраховувати на отримання спеціальних пропозицій та цін зі знижками на день семінару. Великий асортимент професійних засобів догляду дозволяє якісно покращити стан волосся, шкіри у чоловіків і жінок, а значить, допоможе виглядати ще привабливішими, бути впевненішими в собі.',
              style: TextStyle(
                fontSize: 16,
                color: AppColors.black,
              ),
                textAlign: TextAlign.justify,
              ),

            )
          ],
        ),
      ),
    );
  }
}
