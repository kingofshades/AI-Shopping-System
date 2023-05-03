import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/start/mainscreen.dart';
import 'package:myapp/utils.dart';

final username = TextEditingController();
final password = TextEditingController();
final confim = TextEditingController();
final email = TextEditingController();

class Register extends StatelessWidget {
  static String id = 'Register';
  @override
  Widget build(BuildContext context) {
    double baseWidth = 396;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Container(
          // register98N (2:68)
          padding:
              EdgeInsets.fromLTRB(31 * fem, 124 * fem, 32 * fem, 106 * fem),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xff000000),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // logoknN (2:72)
                margin:
                    EdgeInsets.fromLTRB(8 * fem, 0 * fem, 0 * fem, 58 * fem),
                width: 265 * fem,
                height: 80 * fem,
                child: Image.asset(
                  'assets/start/images/logo.png',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                // autogroupnyvudrA (GT349ow8L3Roj4iypVnYVu)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 73 * fem, 45 * fem),
                width: 248 * fem,
                height: 72 * fem,
                child: Stack(
                  children: [
                    Positioned(
                      // createaccountLka (2:70)
                      left: 0 * fem,
                      top: 0 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 226 * fem,
                          height: 42 * fem,
                          child: Text(
                            'Create Account',
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 28 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.5 * ffem / fem,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // togetstartednowAUi (2:71)
                      left: 0 * fem,
                      top: 33 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 248 * fem,
                          height: 39 * fem,
                          child: Text(
                            'to get started now!',
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 26 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.5 * ffem / fem,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //Email
              Padding(
                padding:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 4 * fem, 23 * fem),
                child: Center(
                  child: TextField(
                      // autogroupc1vh4jc (GT36KLAJyaZYsEGA3Uc1VH)
                      controller: email,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Email',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        suffixIcon: IconButton(
                            onPressed: () {
                              email.clear();
                            },
                            icon: const Icon(Icons.clear)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                      )),
                ),
              ),
              //username
              Padding(
                padding:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 4 * fem, 18 * fem),
                child: Center(
                  child: TextField(
                      // autogroupc1vh4jc (GT36KLAJyaZYsEGA3Uc1VH)
                      controller: username,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Username',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        suffixIcon: IconButton(
                            onPressed: () {
                              username.clear();
                            },
                            icon: const Icon(Icons.clear)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                      )),
                ),
              ),
              //Password
              Padding(
                padding:
                    EdgeInsets.fromLTRB(3 * fem, 0 * fem, 1 * fem, 18 * fem),
                child: Center(
                  child: TextField(
                      // autogroupc1vh4jc (GT36KLAJyaZYsEGA3Uc1VH)
                      controller: password,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        suffixIcon: IconButton(
                            onPressed: () {
                              password.clear();
                            },
                            icon: const Icon(Icons.clear)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                      )),
                ),
              ),
              //Confirm Password
              Padding(
                padding:
                    EdgeInsets.fromLTRB(4 * fem, 0 * fem, 0 * fem, 44 * fem),
                child: Center(
                  child: TextField(
                      // autogroupc1vh4jc (GT36KLAJyaZYsEGA3Uc1VH)
                      controller: confim,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Confirm Password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        suffixIcon: IconButton(
                            onPressed: () {
                              confim.clear();
                            },
                            icon: const Icon(Icons.clear)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                      )),
                ),
              ),
              /* Container(
                // autogrouptnqf3gv (GT34QtLLh6nN7npXuytnQF)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 4 * fem, 18 * fem),
                width: 329 * fem,
                height: 47 * fem,
                decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.circular(300 * fem),
                ),
                child: Center(
                  child: Text(
                    'Username',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: 16 * ffem,
                      fontWeight: FontWeight.w500,
                      height: 1.5 * ffem / fem,
                      color: Color(0xffacacac),
                    ),
                  ),
                ),
              ),
              Container(
                // autogroupekuyuDL (GT34WDWnrUA46DKQzoeKuy)
                margin:
                    EdgeInsets.fromLTRB(3 * fem, 0 * fem, 1 * fem, 18 * fem),
                width: double.infinity,
                height: 47 * fem,
                decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.circular(300 * fem),
                ),
                child: Center(
                  child: Text(
                    'Password',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: 16 * ffem,
                      fontWeight: FontWeight.w500,
                      height: 1.5 * ffem / fem,
                      color: Color(0xffacacac),
                    ),
                  ),
                ),
              ),
              Container( 
                // autogrouppsuo9Na (GT34eNwrfSSxEfxPU8PSUo)
                margin:
                    EdgeInsets.fromLTRB(4 * fem, 0 * fem, 0 * fem, 44 * fem),
                width: 329 * fem,
                height: 47 * fem,
                decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.circular(300 * fem),
                ),
                child: Center(
                  child: Text(
                    'Confirm Password',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: 16 * ffem,
                      fontWeight: FontWeight.w500,
                      height: 1.5 * ffem / fem,
                      color: Color(0xffacacac),
                    ),
                  ),
                ),
              ),*/
              Padding(
                padding:
                    EdgeInsets.fromLTRB(86 * fem, 0 * fem, 71 * fem, 0 * fem),
                child: Center(
                  child: Material(
                    // autogroupc1vh4jc (GT36KLAJyaZYsEGA3Uc1VH)
                    elevation: 5.0,
                    color: const Color(0xffff6e03),
                    borderRadius: BorderRadius.circular(300 * fem),

                    child: MaterialButton(
                      onPressed: () {
                        Navigator.pushNamed(context, MainScreen.id);
                      },
                      minWidth: double.infinity,
                      height: 56 * fem,
                      child: Center(
                        child: Text(
                          'Register',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 20 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.5 * ffem / fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              /* Container(
                // autogrouplzfrmuk (GT34jHyLQWkEF2j8wELzFR)
                margin:
                    EdgeInsets.fromLTRB(86 * fem, 0 * fem, 71 * fem, 0 * fem),
                width: double.infinity,
                height: 56 * fem,
                decoration: BoxDecoration(
                  color: Color(0xffff6e03),
                  borderRadius: BorderRadius.circular(300 * fem),
                ),
                child: Center(
                  child: Text(
                    'Register',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: 20 * ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.5 * ffem / fem,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ), */
            ],
          ),
        ),
      ),
    );
  }
}
