import 'package:flutter/material.dart';

import '../../../colors.dart';

class AreaOfUsingCheck extends StatefulWidget {
  const AreaOfUsingCheck({super.key});

  @override
  State<AreaOfUsingCheck> createState() => _AreaOfUsingCheckState();
}

class _AreaOfUsingCheckState extends State<AreaOfUsingCheck> {
  bool hairSelected = false;
  bool faceSelected = false;
  bool bodySelected = false;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Checkbox(
              activeColor: AppColors.black,
              value: hairSelected,
              onChanged: (bool? value) {
                setState(() {
                  hairSelected = value!;
                });
              },
            ),
            Text('Волосся',style: TextStyle(
              color: AppColors.black,
              fontSize: 16,
            ),),
          ],
        ),
        Row(
          children: [
            Checkbox(
              activeColor: AppColors.black,
              value: faceSelected,
              onChanged: (bool? value) {
                setState(() {
                  faceSelected = value!;
                });
              },
            ),
            Text('Лице',
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
