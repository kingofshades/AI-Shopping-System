import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/start/mainscreen.dart';
import 'package:myapp/utils.dart';
import 'package:carousel_slider/carousel_slider.dart';

String US_ID = 'Armaghan';

class MainScreen extends StatefulWidget {
  @override
  static String id = 'MainScreen';

  MainState createState() => MainState();
}

class MainState extends State<MainScreen> {
  List imageList = [
    {"id": 1, "image_path": 'assets/slider/1.png'},
    {"id": 2, "image_path": 'assets/slider/2.png'},
    {"id": 3, "image_path": 'assets/slider/3.png'}
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    double baseWidth = 396;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Container(
          // main5WS (2:86)
          padding: EdgeInsets.fromLTRB(28 * fem, 81 * fem, 30 * fem, 68 * fem),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xff000000),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // logoyri (2:90)
                margin:
                    EdgeInsets.fromLTRB(10 * fem, 0 * fem, 0 * fem, 31 * fem),
                width: 270 * fem,
                height: 80 * fem,
                child: Image.asset(
                  'assets/start/images/logo-dvS.png',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                // hellouserW5x (2:88)
                margin:
                    EdgeInsets.fromLTRB(2 * fem, 0 * fem, 0 * fem, 19 * fem),
                child: Text(
                  'Hello, $US_ID',
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont(
                    'Poppins',
                    fontSize: 28 * ffem,
                    fontWeight: FontWeight.w700,
                    height: 1.5 * ffem / fem,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
              Container(
                // promotionsoKx (2:97)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 197 * fem, 8 * fem),
                child: Text(
                  'Promotions',
                  style: SafeGoogleFont(
                    'Poppins',
                    fontSize: 15 * ffem,
                    fontWeight: FontWeight.w500,
                    height: 1.5 * ffem / fem,
                    color: Color(0xffacacac),
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.fromLTRB(27 * fem, 0 * fem, 11 * fem, 100 * fem),
                child: Column(children: [
                  Stack(
                    children: [
                      InkWell(
                        onTap: () {
                          print(currentIndex);
                        },
                        child: CarouselSlider(
                          items: imageList
                              .map(
                                (item) => Image.asset(
                                  item['image_path'],
                                  height: 400 * fem,
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                ),
                              )
                              .toList(),
                          carouselController: carouselController,
                          options: CarouselOptions(
                            scrollPhysics: const BouncingScrollPhysics(),
                            autoPlay: true,
                            aspectRatio: 1,
                            viewportFraction: 1,
                            onPageChanged: (index, reason) {
                              setState(() {
                                currentIndex = index;
                              });
                            },
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 0,
                        right: 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: imageList.asMap().entries.map((entry) {
                            return GestureDetector(
                              onTap: () =>
                                  carouselController.animateToPage(entry.key),
                              child: Container(
                                width: currentIndex == entry.key ? 17 : 7,
                                height: 7.0,
                                margin: const EdgeInsets.symmetric(
                                  horizontal: 3.0,
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: currentIndex == entry.key
                                        ? Color(0xffff6e03)
                                        : Colors.white),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                ]),
              ),
/*               Container(
                // promotionK3Q (2:100)
                margin:
                    EdgeInsets.fromLTRB(27 * fem, 0 * fem, 11 * fem, 100 * fem),
                width: double.infinity,
                height: 300 * fem,
                decoration: BoxDecoration(
                  color: Color(0xffd9d9d9),
                ),
              ), */
              Container(
                // autogrouprwnbEAN (GT35BhP1MymdKuP4aiRWNB)
                margin:
                    EdgeInsets.fromLTRB(12 * fem, 0 * fem, 0 * fem, 5 * fem),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 75 * fem, 0 * fem),
                      child: FloatingActionButton(
                        onPressed: () {
                          // Add your onPressed code here!
                        },
                        backgroundColor: Color(0xffff6e03),
                        child: const Icon(Icons.shopping_cart),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 73 * fem, 0 * fem),
                      child: FloatingActionButton(
                        onPressed: () {
                          // Add your onPressed code here!
                        },
                        backgroundColor: Colors.white,
                        child: const Icon(Icons.fingerprint,
                            color: Color(0xffff6e03)),
                      ),
                    ),
                    FloatingActionButton(
                      onPressed: () {
                        // Add your onPressed code here!
                      },
                      backgroundColor: Color(0xffff6e03),
                      child: const Icon(Icons.receipt),
                    ),
                  ],
                ),
              ),
              Container(
                // autogroupdocbX2z (GT35MMmaHD8p9o2ufqDocB)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 4.5 * fem, 0 * fem),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // virtualcartSQr (2:94)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 30.5 * fem, 0 * fem),
                      child: Text(
                        'Virtual Cart',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 16 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.5 * ffem / fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                    Container(
                      // scantoenter9aA (2:101)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 45 * fem, 0 * fem),
                      child: Text(
                        'Scan to Enter',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 16 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.5 * ffem / fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                    Text(
                      // receiptfHc (2:102)
                      'Receipt',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 16 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.5 * ffem / fem,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
