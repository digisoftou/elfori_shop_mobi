import 'package:elfori_shop_mobi/trainingCenter/seminar_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../colors.dart';
import '../models/EventItem.dart';

class ScheduleOfSeminarsFull extends StatelessWidget {
  const ScheduleOfSeminarsFull({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      height: 450,
      width: screenSize.width,
        child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
            itemCount: eventsList.length,
            itemBuilder: (context, index){
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
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/images/trainingsLogo.png'),
                          SizedBox(width: 20,),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                   children:
                                    [
                                      Container(
                                        padding: EdgeInsets.only(top: 8, bottom: 8, left: 13, right: 13),
                                        decoration: BoxDecoration(
                                          color: AppColors.grey.withOpacity(0.3),
                                          borderRadius: BorderRadius.circular(8), // Заокруглення кутів
                                        ),
                                        child: Text(eventsList[index].date,
                                          style: TextStyle(
                                              color: AppColors.black,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14
                                          ),),
                                      ),
                                      SizedBox(width: 10,),
                                      Container(
                                        padding: EdgeInsets.only(top: 8, bottom: 8, left: 13, right: 13),
                                        decoration: BoxDecoration(
                                          color: AppColors.grey.withOpacity(0.3),
                                          borderRadius: BorderRadius.circular(8), // Заокруглення кутів
                                        ),
                                        child: Text(eventsList[index].format,
                                          style: TextStyle(
                                              color: AppColors.black,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14
                                          ),),
                                      ),
                                    ]
                                ),
                                SizedBox(height: 5,),
                                Container(
                                  padding: EdgeInsets.only(top: 8, bottom: 8, left: 13, right: 13),
                                  decoration: BoxDecoration(
                                    color: AppColors.grey.withOpacity(0.3),
                                    borderRadius: BorderRadius.circular(8), // Заокруглення кутів
                                  ),
                                  child: Text(eventsList[index].city,
                                    style: TextStyle(
                                        color: AppColors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14
                                    ),),
                                ),
                              ],
                            ),
                          ),
        
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20, bottom: 20),
                        child: Text(eventsList[index].description,
                        style: TextStyle(
                          color: AppColors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400
                        ),),
                      ),
                      Container(
                        child: Text(eventsList[index].speaker,
                          style: TextStyle(
                              color: AppColors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w600
                          ),),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 20),
                        child: Text(eventsList[index].speakerDetails,
                          style: TextStyle(
                              color: AppColors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w400
                          ),),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 1.1*screenSize.width / 3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                              border: Border.all(color: AppColors.lightGrey.withOpacity(0.2)),
                            ),
                            child: TextButton(
                              onPressed: () {
                                Get.to(
                                  SeminarDetails(),
                                  arguments: eventsList[index],
                                );
                               // Get.to(()=>SeminarDetails());
                              },
                              child: Text(
                                'ДЕТАЛЬНІШЕ',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              //Get.toNamed('/enter');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4), // Задайте желаемый радиус скругления углов
                              ),
                              fixedSize: Size(1.1*screenSize.width / 3, 50),
                            ),
                            child: Text('ЗАПИСАТИСЯ',
                              style: TextStyle(
                                  color: AppColors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                //color: Colors.red,
        
              );
        
            }
        ),

    );


  }
}
