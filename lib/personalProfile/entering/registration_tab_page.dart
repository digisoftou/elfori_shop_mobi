import 'package:dotted_border/dotted_border.dart';
import 'package:elfori_shop_mobi/personalProfile/entering/speciality_enum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../colors.dart';
import 'entity_type_enum.dart';

class RegistrationTabPage extends StatefulWidget {
  const RegistrationTabPage({super.key});

  @override
  State<RegistrationTabPage> createState() => _RegistrationTabPageState();
}

String getEntityTypeLabel(EntityType type) {
  switch (type) {
    case EntityType.physicalPerson:
      return 'Фізична особа';
    case EntityType.legalPerson:
      return 'Юридична особа';
    case EntityType.individualEntrepreneur:
      return 'ФОП';
    default:
      return '';
  }
}

String getSpecialityLabel(Speciality type) {
  switch (type) {
    case Speciality.Cosmetologist:
      return 'Косметолог';
    case Speciality.Hairdresser:
      return 'Перукар';
    default:
      return '';
  }
}


class _RegistrationTabPageState extends State<RegistrationTabPage> {
  EntityType? selectedEntityType = EntityType.physicalPerson;
  Speciality? selectedSpeciality ;
  bool isChecked = false;
  List<Map<String, dynamic>> checkboxItems = [
    {'title': 'HL Holy Land Always Active (Ізраїль)', 'value': false},
    {'title': 'Brilace (Франція)', 'value': false},
    {'title': 'Nanorma (Франція)', 'value': false},
    {'title': 'Emmebi Italia (Італія)', 'value': false},
  ];
  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;

    return Container(
        height: screenSize.height,
        width: screenSize.width,
        margin: EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                      width: screenSize.width,
                      child: Text('Створити обліковий запис',
                        style: TextStyle(
                            color: AppColors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w600
                        ),
                      )),
                  SizedBox(height: 30,),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: AppColors.white// Радіус заокруглення кутів (змініть на потрібний)
                    ),
                    width: screenSize.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Загальна інформація',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: AppColors.black,
                          ),),
                        SizedBox(height: 10,),
                        TextField(
                          decoration: InputDecoration(
                            filled: true, // Заповнений фон
                            fillColor: Colors.white, // Білий фон
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8), // Задайте желаний радіус закруглення кутів
                              borderSide: BorderSide(color: AppColors.lightGrey), // Сірий контур
                            ),
                            hintText: 'Ім\'я*', // Текст підказки
                            hintStyle: TextStyle(color: Colors.grey), // Сірий колір тексту підказки
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
                            hintText: 'Прізвище*', // Текст підказки
                            hintStyle: TextStyle(color: AppColors.grey), // Сірий колір тексту підказки
                          ),
                        ),
                        SizedBox(height: 10,),
                        DropdownButtonFormField<EntityType>(
                          value: selectedEntityType,
                          onChanged: (EntityType? newValue) {
                            setState(() {
                              selectedEntityType = newValue!;
                            });
                          },
                          items: EntityType.values.map((EntityType type) {
                            return DropdownMenuItem<EntityType>(
                              value: type,
                              child: Row(
                                children: [
                                  Text(getEntityTypeLabel(type)),
                                ],
                              ),
                            );
                          }).toList(),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: AppColors.white,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(color: AppColors.lightGrey),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(color: AppColors.grey), // Чорний контур при активності
                            ),
                            hintText: 'Оберіть тип особи',
                            hintStyle: TextStyle(color: AppColors.grey),
                          ),
                        ),
                        SizedBox(height: 40,),
                        //
                        Text('Введіть електронну пошту',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: AppColors.black,
                          ),),
                        SizedBox(height: 10,),
                        TextField(
                          decoration: InputDecoration(
                            filled: true, // Заповнений фон
                            fillColor: Colors.white, // Білий фон
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8), // Задайте желаний радіус закруглення кутів
                              borderSide: BorderSide(color: AppColors.lightGrey), // Сірий контур
                            ),
                            hintText: 'Email', // Текст підказки
                            hintStyle: TextStyle(color: Colors.grey), // Сірий колір тексту підказки
                          ),
                        ),
                        SizedBox(height: 40,),
                        TextField(
                          decoration: InputDecoration(
                            filled: true, // Заповнений фон
                            fillColor: Colors.white, // Білий фон
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8), // Задайте желаний радіус закруглення кутів
                              borderSide: BorderSide(color: AppColors.lightGrey), // Сірий контур
                            ),
                            hintText: 'Пароль', // Текст підказки
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
                            hintText: 'Повторити пароль', // Текст підказки
                            hintStyle: TextStyle(color: AppColors.grey), // Сірий колір тексту підказки
                          ),
                        ),
                        SizedBox(height: 40,),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Checkbox(
                                    value: isChecked,
                                    onChanged: (bool? newValue) {
                                      setState(() {
                                        isChecked = newValue ?? false;
                                      });
                                    },
                                  ),
                                  Text('Я мастер',
                                  style: TextStyle(
                                    color: AppColors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16
                                  ),),
                                ],
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8), // Задайте желаний радіус закруглення кутів
                                    borderSide: BorderSide(color: AppColors.lightGrey), // Сірий контур
                                  ),
                                  hintText: 'Введіть місто', // Текст підказки
                                  hintStyle: TextStyle(color: AppColors.grey), // Сірий колір тексту підказки
                                ),
                              ),
                              SizedBox(height: 10,),
                              DropdownButtonFormField<Speciality>(
                                value: selectedSpeciality,
                                onChanged: (Speciality? newValue) {
                                  setState(() {
                                    selectedSpeciality = newValue!;
                                  });
                                },
                                items: Speciality.values.map((Speciality type) {
                                  return DropdownMenuItem<Speciality>(
                                    value: type,
                                    child: Row(
                                      children: [
                                        Text(getSpecialityLabel(type)),
                                      ],
                                    ),
                                  );
                                }).toList(),
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: AppColors.white,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide(color: AppColors.lightGrey),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide(color: AppColors.grey), // Чорний контур при активності
                                  ),
                                  hintText: 'Оберіть спеціальність',
                                  hintStyle: TextStyle(color: AppColors.grey),
                                ),
                              ),
                              SizedBox(height: 30,),
                              Text('Оберіть продукцію яка Вас цікавить',
                              style: TextStyle(
                                color: AppColors.grey,
                                fontSize: 16,
                                fontWeight: FontWeight.w600
                              ),),
                              SizedBox(height: 20,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: List.generate(
                                  checkboxItems.length,
                                      (index) => CheckboxListTile(
                                        controlAffinity: ListTileControlAffinity.leading,
                                    title: Text(checkboxItems[index]['title'],
                                      style: TextStyle(
                                        color: AppColors.black,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16
                                      ),
                                    ),
                                    value: checkboxItems[index]['value'],
                                    onChanged: (value) {
                                      setState(() {
                                        checkboxItems[index]['value'] = value!;
                                      });
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(height: 30,),
                              Text('Прикрипіть сертифікат',
                                style: TextStyle(
                                    color: AppColors.grey,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600
                                ),),
                            ],
                          ),
                        ),
                        DottedBorder(
                            padding: EdgeInsets.all(10),
                            radius: Radius.circular(20), // Заокруглення кутів
                            color: Colors.grey, // Колір пунктирного бордеру
                            strokeWidth: 1,
                            child: Container(
                          width: screenSize.width,
                          height: 50,
                        )),
                        SizedBox(height: 40,),
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
                            child: Text('СТВОРИТИ АКАУНТ',
                              style: TextStyle(
                                  color: AppColors.grey,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14
                              ),
                            ),
                          ),
                        ),
                        Text('Натискаючи на кнопку “Створити акаунт”, я погоджуюсь з публічною офертою',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w100,
                            color: AppColors.lightGrey,
                          ),
                        )

                      ],
                    ),
                  )
                ],
              ),

            ],
          ),
        )
    );
  }
}


