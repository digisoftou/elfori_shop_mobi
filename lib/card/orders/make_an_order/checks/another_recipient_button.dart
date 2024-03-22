import 'package:flutter/material.dart';

import '../../../../colors.dart';


class AnotherRecipientButton extends StatefulWidget {
  const AnotherRecipientButton({Key? key}) : super(key: key);

  @override
  State<AnotherRecipientButton> createState() => _AnotherRecipientButtonState();
}

class _AnotherRecipientButtonState extends State<AnotherRecipientButton> {
  bool phoneSelected = false;
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          children: [
            Checkbox(
              activeColor: AppColors.black,
              value: phoneSelected,
              onChanged: (bool? value) {
                setState(() {
                  phoneSelected = value ?? false;
                });
              },
            ),
            Container(
              width: 3 * screenSize.width / 5,
              child: Text(
                'Інший отримувач',
                style: TextStyle(
                  color: AppColors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
        if (phoneSelected) // Умовний вивід текстового поля, якщо чекбокс відмічено
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Column(
              children: [
                TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                    labelText: 'Ім\'я одержувача',
                    labelStyle: TextStyle(
                      color: AppColors.grey,
                      fontWeight: FontWeight.w400
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        color: AppColors.grey,//Colors.grey[300]!,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                    labelText: 'Прізвище одержувача',
                    labelStyle: TextStyle(
                        color: AppColors.grey,
                        fontWeight: FontWeight.w400
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        color: AppColors.grey,//Colors.grey[300]!,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                    labelText: 'Номер телефону одержувача',
                    labelStyle: TextStyle(
                        color: AppColors.grey,
                        fontWeight: FontWeight.w400
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        color: AppColors.grey,//Colors.grey[300]!,
                      ),
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
