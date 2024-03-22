import 'package:flutter/material.dart';

import '../colors.dart';

class ScheduleOfSeminarsEmpty extends StatelessWidget {
  const ScheduleOfSeminarsEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(20),
      width: screenSize.width,
      margin: EdgeInsets.only(left: 20, top: 20, right: 20),
      //height: 500,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: AppColors.grey.withOpacity(0.3),
          width: 1,
        ),
      ),
      child: Column(
        children: [
          Text('Немає семінарів',
            style: TextStyle(
                color: AppColors.black,
                fontSize: 16,
                fontWeight: FontWeight.w600
            ),),
          SizedBox(height: 10,),
          Container(
            width: screenSize.width,
            child: Text('Спробуйте змінити фільтр та спробуйте ще раз',
              style: TextStyle(
                color: AppColors.grey,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 10,),
          Container(
            //width: MediaQuery.of(context).size.width - 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
              border: Border.all(color: AppColors.lightGrey.withOpacity(0.2)),
            ),
            child: TextButton(
              onPressed: () {
              },
              child: Text(
                'Прибрати фільтри',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),



        ],
      ),

      //color: Colors.red,

    );
  }
}
