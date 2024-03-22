import 'package:flutter/material.dart';

import '../../../colors.dart';

class MadeForCheck extends StatefulWidget {
  const MadeForCheck({super.key});

  @override
  State<MadeForCheck> createState() => _MadeForCheckState();
}

class _MadeForCheckState extends State<MadeForCheck> {
  bool homeSelected = false;
  bool footSelected = false;
  bool bodySelected = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Checkbox(
              activeColor: AppColors.black,
              value: homeSelected,
              onChanged: (bool? value) {
                setState(() {
                  homeSelected = value!;
                });
              },
            ),
            Text('Для домашнього застосування',style: TextStyle(
              color: AppColors.black,
              fontSize: 16,
            ),),
          ],
        ),
        Row(
          children: [
            Checkbox(
              activeColor: AppColors.black,
              value: footSelected,
              onChanged: (bool? value) {
                setState(() {
                  footSelected = value!;
                });
              },
            ),
            Text('Ноги',
              style: TextStyle(
                color: AppColors.black,
                fontSize: 16,
              ),),
          ],
        ),
        Row(
          children: [
            Checkbox(
              activeColor: AppColors.black,
              value: bodySelected,
              onChanged: (bool? value) {
                setState(() {
                  bodySelected = value!;
                });
              },
            ),
            Text('Тіло',
              style: TextStyle(
                color: AppColors.black,
                fontSize: 16,
              ),),
          ],
        ),
      ],
    );
  }
}
