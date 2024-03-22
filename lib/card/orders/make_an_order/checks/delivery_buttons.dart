import 'package:flutter/material.dart';

import '../../../../colors.dart';


class DeliveryButtons extends StatefulWidget {
  const DeliveryButtons({super.key});

  @override
  State<DeliveryButtons> createState() => _DeliveryButtonsState();
}

class _DeliveryButtonsState extends State<DeliveryButtons> {

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
              'Нова пошта',
              style: TextStyle(
                color: AppColors.black,
                fontSize: 16,
                fontWeight: FontWeight.w500
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
              'Відправка по ТТН клієнта',
              style: TextStyle(
                color: AppColors.black,
                fontSize: 16,
                  fontWeight: FontWeight.w500
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
              'Доставка кур\'єром по Києву',
              style: TextStyle(
                color: AppColors.black,
                fontSize: 16,
                  fontWeight: FontWeight.w500
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
              'Самовивіз (м.Київ)',
              style: TextStyle(
                color: AppColors.black,
                fontSize: 16,
                  fontWeight: FontWeight.w500
              ),
            ),
          ],
        ),
      ],
    );
  }
}

