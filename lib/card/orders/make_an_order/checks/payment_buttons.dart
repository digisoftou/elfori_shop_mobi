import 'package:flutter/material.dart';

import '../../../../colors.dart';


class PaymentButtons extends StatefulWidget {
  const PaymentButtons({super.key});

  @override
  State<PaymentButtons> createState() => _PaymentButtonsState();
}

class _PaymentButtonsState extends State<PaymentButtons> {

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
              'При отриманні на пошті',
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
              'На рахунок',
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
              'Оплатити онлайн (Liqpay)',
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

