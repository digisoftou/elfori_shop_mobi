import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../colors.dart';

class Representation extends StatefulWidget {
  const Representation({super.key});

  @override
  State<Representation> createState() => _RepresentationState();
}

class _RepresentationState extends State<Representation> {
  late GoogleMapController mapController;

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
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                'Представництва',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 26,
                    color: AppColors.black
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              alignment: Alignment.topLeft,
              child: Text(
                'НАША АДРЕСА: МІСТО КИЇВ, 03037, ПР-Т ВАЛЕРІЯ ЛОБАНОВСЬКОГО, БУДИНОК 4А, 3 ПОВЕРХ, ВХІД З ПРАВОЇ СТОРОНИ БУДИНКУ.\n+38 (068) 298-5555',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: AppColors.grey
                ),

              ),
            ),
        Container(
          width: screenSize.width,
          height: 300,
          margin: EdgeInsets.only(top: 20, bottom: 20),
          color: AppColors.grey.withOpacity(0.2),
          child: GoogleMap(
            initialCameraPosition: CameraPosition(
              target: LatLng(50.4501, 30.5234), // Координати Києва
              zoom: 15,
            ),
            onMapCreated: (GoogleMapController controller) {
              mapController = controller;
            },
            markers: {
              Marker(
                markerId: MarkerId('our_address'),
                position: LatLng(50.4501, 30.5234), // Координати Києва
                infoWindow: InfoWindow(
                  title: 'Наша адреса',
                  snippet: 'Місто Київ, 03037, пр-т Валерія Лобановського, будинок 4А, 3 поверх, вхід з правої сторони будинку\n+38 (068) 298-5555',
                ),
              ),
            },
          ),
        ),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                'РЕГІОНАЛЬНІ\nПРЕДСТАВНИЦТВА',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 22,
                    color: AppColors.black
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              width: screenSize.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: AppColors.grey.withOpacity(0.3),
                  width: 1,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Івано-Франківськ',
                  style: TextStyle(
                    color: AppColors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 16
                  ),),
                  SizedBox(height: 10,),
                  Text('вул. Січових Стрільців, 18, каб. 308',
                    style: TextStyle(
                        color: AppColors.grey,
                        fontWeight: FontWeight.w400,
                        fontSize: 16
                    ),),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Терновецька Наталя',
                        style: TextStyle(
                            color: AppColors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 14
                        ),),
                      Text('+38 (066) 380 68 18',
                        style: TextStyle(
                            color: AppColors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 14
                        ),),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Container(
                    width: screenSize.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                      border: Border.all(color: AppColors.lightGrey.withOpacity(0.2)),
                    ),
                    child: TextButton(
                      onPressed: () {

                        // Get.to(()=>SeminarDetails());
                      },
                      child: Text(
                        'ДИВИТИСЯ НА МАПІ',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            )


          ],
        ),
      ),
    );
  }
}
