import 'package:elfori_shop_mobi/colors.dart';
import 'package:elfori_shop_mobi/models/products.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class FullCard extends StatefulWidget {
  const FullCard({super.key});

  @override
  State<FullCard> createState() => _FullCardState();
}

class _FullCardState extends State<FullCard> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        Column(
            children: [
              Container(
                width: screenSize.width,
                height: 3*screenSize.height/5,
                child: ListView.builder(
                    itemCount: products.length,
                    itemBuilder: (context, index){
                      final product = products[index];
                      return Container(
                        margin: EdgeInsets.only(top: 20),
                        width: 150,
                        height: 150,
                        child: Row(
                          children: [

                            Container(
                              height: 130,
                              width: 100,
                              color: Colors.red,
                              child:
                              Image.asset(
                                product.imageAsset,
                                fit: BoxFit.cover,
                                height: 40, // Ось де ви можете встановити бажану висоту карточки
                                width: double.infinity,
                              ),
                            ),
                            SizedBox(width: 20,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 3*screenSize.width/5,
                                    child: Text(product.title,
                                    style: TextStyle(
                                      color: AppColors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16
                                    ),)),
                                SizedBox(height: 7,),
                                Text(product.subtitle,
                                  style: TextStyle(
                                      color: AppColors.grey,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12
                                  ),),
                                SizedBox(height: 5,),
                                Text('${product.discountedPrice.toString()} \u20B4',
                                  style: TextStyle(
                                      color: AppColors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14
                                  ),),
                                Row(
                                  children: [
                                    IconButton(
                                        onPressed: (){},
                                        icon: Icon(Icons.remove,
                                        color: AppColors.black,)),
                                    SizedBox(width: 5,),
                                    Text('1',
                                    style: TextStyle(
                                      color: AppColors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600
                                    ),),
                                    SizedBox(width: 5,),
                                    IconButton(
                                        onPressed: (){},
                                        icon: Icon(Icons.add,
                                          color: AppColors.black,)),
                                  ],
                                )

                              ],
                            )
                          ],
                        ),
                      );
                    }),
              )
            ],

        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: Container(
            width: screenSize.width-40,
            child: ElevatedButton(
                onPressed: () {
                  Get.toNamed('/makeOrder');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4), // Задайте желаемый радиус скругления углов
                  ),
                  fixedSize: Size(screenSize.width, 50),
                ),
                child: Text('ОФОРМИТИ ЗАМОВЛЕННЯ',
                  style: TextStyle(
                      color: AppColors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 14
                  ),
                ),

            ),
          ),
        )
      ],
    );
  }
}
