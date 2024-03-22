import 'package:flutter/material.dart';

import '../../../../colors.dart';

class PhoneCheckButton extends StatefulWidget {
  const PhoneCheckButton({super.key});

  @override
  State<PhoneCheckButton> createState() => _PhoneCheckButtonState();
}

class _PhoneCheckButtonState extends State<PhoneCheckButton> {
  bool phoneSelected = false;

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
                  phoneSelected = value!;
                });
              },
            ),
            Container(
              width: 3*screenSize.width/5,
              child: Text('Мені можна не телефонувати для підтвердження замовлення',style: TextStyle(
                color: AppColors.black,
                fontSize: 15,
                fontWeight: FontWeight.w500
              ),),
            ),
          ],
        ),
      ],
    );
  }
}
