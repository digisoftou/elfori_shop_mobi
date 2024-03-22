import 'package:elfori_shop_mobi/card/card.dart';
import 'package:elfori_shop_mobi/catalogue/search_in_catalogue.dart';
import 'package:elfori_shop_mobi/colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../mainScreen/main_screen_view.dart';
import '../personalProfile/personal_profile.dart';
import '../card/card.dart';

class BottomBarWithAllScreens extends StatefulWidget {
  const BottomBarWithAllScreens({Key? key}) : super(key: key);

  @override
  State<BottomBarWithAllScreens> createState() => _BottomBarWithAllScreensState();
}

class _BottomBarWithAllScreensState extends State<BottomBarWithAllScreens> {
  int selectedIndex = 0;
  final List<Widget> screens = [
    MainScreen(),
    SearchInCatalogue(),
    PersonalCard(),
    PersonalProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: screens[selectedIndex],
      bottomNavigationBar:SizedBox(
        height: screenSize.height/12,
        child: BottomNavigationBar(
          backgroundColor: AppColors.white,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/home_icon.svg',
                color: AppColors.grey,
              ),
              label: 'головна',
              activeIcon: SvgPicture.asset(
                'assets/icons/home_icon.svg',
                color: AppColors.black,
              ),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/catalogue_icon.svg',
                color: AppColors.grey,
              ),
              label: 'каталог',
              activeIcon: SvgPicture.asset(
                'assets/icons/catalogue_icon.svg',
                color: AppColors.black,
              ),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/cart_icon.svg',
                color: AppColors.grey,
              ),
              label: 'корзина',
              activeIcon: SvgPicture.asset(
                'assets/icons/cart_icon.svg',
                color: AppColors.black,
              ),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/account_icon.svg',
                color: AppColors.grey,
              ),
              label: 'профіль',
              activeIcon: SvgPicture.asset(
                'assets/icons/account_icon.svg',
                color: AppColors.black,
              ),
            ),
          ],
          currentIndex: selectedIndex,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.black,

        ),
      ),


    );
  }
}
