import 'package:elfori_shop_mobi/catalogue/filters/all_filters.dart';
import 'package:elfori_shop_mobi/catalogue/product_details.dart';
import 'package:elfori_shop_mobi/colors.dart';
import 'package:elfori_shop_mobi/models/products.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Hair extends StatefulWidget {
  const Hair({super.key});

  @override
  State<Hair> createState() => _HairState();
}

class _HairState extends State<Hair> {
  List<String> wordsList = ['Сортування','Бренди', 'Зона застосування',];

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        leading: Container(
          margin: EdgeInsets.all(10),
          child: GestureDetector(
            onTap: (){
              Get.back();
            },
            child: SvgPicture.asset(
              'assets/icons/direction=left.svg',
              color: AppColors.black,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 20, right: 30, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Волосся',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  color: AppColors.black
                ),
              ),
              Text('355 товарів',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColors.grey
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20),
                     // color: AppColors.grey.withOpacity(0.2),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: AppColors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(2),
                      ),
                      child: GestureDetector(
                        onTap: (){
                          Get.to(()=>AllFilters());
                        },
                        child: SvgPicture.asset(
                          'assets/icons/page_info.svg',
                          color: AppColors.black,
                          height: 20,
                          width: 20,
                        ),
                      ),
                    ),
                    Row(
                      children: wordsList.map((word) {
                        return Container(
                          margin: EdgeInsets.only(top: 20, left: 10),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: AppColors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: Text(
                            word,
                            style: TextStyle(
                                color: AppColors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 16
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Container(
                width: screenSize.width,
                height: screenSize.height,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: (screenSize.width / 2) / 310,
                  ),
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    final product = products[index];
                    return GestureDetector(
                      onTap: (){
                        Get.to(
                          ProductDetails(),
                          arguments: product,
                        );
                      },
                      child: Card(
                        elevation: 0,
                        color: AppColors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              product.imageAsset,
                              fit: BoxFit.cover,
                              height: 130, // Ось де ви можете встановити бажану висоту карточки
                              width: double.infinity,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    product.title,
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(product.subtitle,
                                    style: TextStyle(
                                      color: AppColors.grey,
                                      fontSize: 14
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '${product.discountedPrice.toStringAsFixed(2)}\u20B4',
                                        style: TextStyle(
                                          color: AppColors.black,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        '${product.price.toStringAsFixed(2)}\u20B4',
                                        style: TextStyle(
                                          decoration: TextDecoration.lineThrough,
                                          color: AppColors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                )

              )

            ],
          ),
        ),
      ),
    );
  }
}
