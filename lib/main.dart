import 'package:elfori_shop_mobi/personalProfile/entering/enter.dart';
import 'package:elfori_shop_mobi/personalProfile/informationBlock/about_company.dart';
import 'package:elfori_shop_mobi/personalProfile/informationBlock/cooperation.dart';
import 'package:elfori_shop_mobi/personalProfile/informationBlock/delivery_and_payment.dart';
import 'package:elfori_shop_mobi/personalProfile/informationBlock/news.dart';
import 'package:elfori_shop_mobi/personalProfile/informationBlock/representation.dart';
import 'package:elfori_shop_mobi/personalProfile/informationBlock/vacancies.dart';
import 'package:elfori_shop_mobi/personalProfile/messages/all_messages.dart';
import 'package:elfori_shop_mobi/personalProfile/personal_profile.dart';
import 'package:elfori_shop_mobi/splashScreen/splash_screen_view.dart';
import 'package:elfori_shop_mobi/trainingCenter/all_trainings.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'card/orders/allOrders/all_orders.dart';
import 'card/orders/make_an_order/make_an_order.dart';
import 'card/orders/make_an_order/order_placed.dart';
import 'catalogue/search_in_catalogue.dart';
import 'navigationBars/bottom_nav_bar_view.dart';

void main() {
  runApp(const ElforiShop());
}

class ElforiShop extends StatelessWidget {
  const ElforiShop({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      routes: {
        "/":(context)=>const SplashScreen(),
        "/home":(context)=>BottomBarWithAllScreens(),
        "/enter":(context)=>Enter(),
        "/trainingCenter":(context)=>TrainingCenter(),
        "/personalProfile":(context)=>PersonalProfile(),
        "/cooperation":(context)=>Cooperation(),
        "/aboutCompany":(context)=>AboutCompany(),
        "/vacancies":(context)=>Vacancies(),
        "/news":(context)=>News(),
        "/deliveryAndPayment":(context)=>DeliveryPayment(),
        "/searchInCatalogue":(context)=>SearchInCatalogue(),
        "/card":(context)=>Card(),
        "/makeOrder":(context)=>MakeOrder(),
        "/opderPlaced":(context)=>OrderWasPlaced(),
        "/allOrders":(context)=>AllOrders(),
        "/allMessages":(context)=>AllMessages(),
        "/representations":(context)=>Representation(),
      },
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),


    );
  }
}
