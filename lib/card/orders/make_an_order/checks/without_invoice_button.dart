import 'package:flutter/material.dart';

import '../../../../colors.dart';

class WithoutInvoiceButton extends StatefulWidget {
  const WithoutInvoiceButton({super.key});

  @override
  State<WithoutInvoiceButton> createState() => _PWithoutInvoiceButtonState();
}

class _PWithoutInvoiceButtonState extends State<WithoutInvoiceButton> {
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
              child: Text('Відправка без накладної',style: TextStyle(
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
