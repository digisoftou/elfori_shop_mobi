import 'package:elfori_shop_mobi/personalProfile/entering/enter_tab_page.dart';
import 'package:elfori_shop_mobi/personalProfile/entering/registration_tab_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../colors.dart';

class Enter extends StatefulWidget {
  const Enter({Key? key}) : super(key: key);

  @override
  State<Enter> createState() => _EnterState();
}

class _EnterState extends State<Enter> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    String? selectedValue;
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: screenSize.height/6,),
            SizedBox(
              width: screenSize.width * 0.55,
              child: TabBar(
                dividerHeight: 0,
                controller: _tabController,
                indicatorColor: Colors.black,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  SizedBox(
                    width: screenSize.width * 0.2,
                    child: Tab(text: 'Вхід'),
                  ),
                  SizedBox(
                    width: screenSize.width * 0.5,
                    child: Tab(text: 'Реєстрація'),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  EnterTabPage(),
                  RegistrationTabPage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
//
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
