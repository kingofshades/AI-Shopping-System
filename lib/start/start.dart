import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/start/login.dart';
import 'package:myapp/start/register.dart';
import 'package:myapp/utils.dart';

class WelcomeScreen extends StatelessWidget {
  static String id = 'WelcomeScreen';
  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Container(
          // startHS2 (2:9)
          padding:
              EdgeInsets.fromLTRB(69 * fem, 196 * fem, 58.5 * fem, 121 * fem),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xff000000),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // welcometoBGW (1:5)
                margin:
                    EdgeInsets.fromLTRB(2.5 * fem, 0 * fem, 0 * fem, 37 * fem),
                child: Text(
                  'Welcome to',
                  style: SafeGoogleFont(
                    'Poppins',
                    fontSize: 20 * ffem,
                    fontWeight: FontWeight.w600,
                    height: 1.5 * ffem / fem,
                    color: Color(0xffff6e03),
                  ),
                ),
              ),
              Container(
                // logosf8 (1:4)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0.5 * fem, 45 * fem),
                width: 265 * fem,
                height: 80 * fem,
                child: Image.asset(
                  'assets/start/images/logo-qd4.png',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                // wecantwaitforyoutovisitourstor (2:2)
                margin: EdgeInsets.fromLTRB(
                    21.5 * fem, 0 * fem, 0 * fem, 146 * fem),
                constraints: BoxConstraints(
                  maxWidth: 244 * fem,
                ),
                child: Text(
                  'We can’t wait for you to \nvisit our store ',
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont(
                    'Poppins',
                    fontSize: 20 * ffem,
                    fontWeight: FontWeight.w600,
                    height: 1.5 * ffem / fem,
                    color: Color(0xffff6e03),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    44 * fem, 0 * fem, 45.5 * fem, 25 * fem),
                child: Center(
                  child: Material(
                    // autogroupc1vh4jc (GT36KLAJyaZYsEGA3Uc1VH)
                    elevation: 5.0,
                    color: const Color(0xffff6e03),
                    borderRadius: BorderRadius.circular(300 * fem),

                    child: MaterialButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Login.id);
                      },
                      minWidth: double.infinity,
                      height: 56 * fem,
                      child: Center(
                        child: Text(
                          'Log in',
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
              Padding(
                padding:
                    EdgeInsets.fromLTRB(44 * fem, 0 * fem, 45.5 * fem, 0 * fem),
                child: Center(
                  child: Material(
                    // autogroupc1vh4jc (GT36KLAJyaZYsEGA3Uc1VH)
                    elevation: 5.0,
                    color: const Color(0xffff6e03),
                    borderRadius: BorderRadius.circular(300 * fem),

                    child: MaterialButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Register.id);
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
            ],
          ),
        ),
      ),
    );
  }
}
