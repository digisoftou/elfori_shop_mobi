import 'package:flutter/material.dart';

import '../../../colors.dart';

class SortingRadio extends StatefulWidget {
  const SortingRadio({super.key});

  @override
  State<SortingRadio> createState() => _SortingRadioState();
}

class _SortingRadioState extends State<SortingRadio> {

  int selectedRadio = 0;

  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Radio(
              value: 0,
              groupValue: selectedRadio,
              onChanged: (val) {
                setSelectedRadio(val!);
              },
              activeColor: Colors.black,
            ),
            Text(
              'Найновіші спочатку',
              style: TextStyle(
                color: AppColors.black,
                fontSize: 16,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Radio(
              value: 1,
              groupValue: selectedRadio,
              onChanged: (val) {
                setSelectedRadio(val!);
              },
              activeColor: Colors.black,
            ),
            Text(
              'По ціні',
              style: TextStyle(
                color: AppColors.black,
                fontSize: 16,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Radio(
              value: 2,
              groupValue: selectedRadio,
              onChanged: (val) {
                setSelectedRadio(val!);
              },
              activeColor: Colors.black,
            ),
            Text(
              'По популярності',
              style: TextStyle(
                color: AppColors.black,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

