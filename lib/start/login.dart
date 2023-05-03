import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/start/register.dart';
import 'package:myapp/utils.dart';

final username = TextEditingController();
final password = TextEditingController();

class Login extends StatefulWidget {
  @override
  static String id = 'Login';

  const Login({super.key});
  LoginState createState() => LoginState();
}

class LoginState extends State<Login> {
  bool? ischeck = true;

  @override
  Widget build(BuildContext context) {
    double baseWidth = 396;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Container(
          // loginTuc (2:10)
          padding: EdgeInsets.fromLTRB(33 * fem, 144 * fem, 34 * fem, 87 * fem),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xff000000),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // logoMzz (2:14)
                margin:
                    EdgeInsets.fromLTRB(8 * fem, 0 * fem, 0 * fem, 62 * fem),
                width: 265 * fem,
                height: 80 * fem,
                child: Image.asset(
                  'assets/start/images/logo-P7Y.png',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                // autogrouplm1r5g6 (GT35mgQP9Cn9QM4BEiLM1R)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 100 * fem, 76 * fem),
                width: 221 * fem,
                height: 72 * fem,
                child: Stack(
                  children: [
                    Positioned(
                      // welcomebuL (2:13)
                      left: 0 * fem,
                      top: 0 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 137 * fem,
                          height: 42 * fem,
                          child: Text(
                            'Welcome',
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
                      // goodtoseeyouttS (2:19)
                      left: 0 * fem,
                      top: 33 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 221 * fem,
                          height: 39 * fem,
                          child: Text(
                            'Good to see you!',
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

              // This username Text Field
              Padding(
                padding:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 26 * fem),
                child: Center(
                  child: TextField(
                      // autogroupc1vh4jc (GT36KLAJyaZYsEGA3Uc1VH)
                      controller: username,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Email / Username',
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
              Padding(
                padding:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 15 * fem),
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
              /*               Padding(
                padding:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 125 * fem, 79 * fem),
                  ), */
              CheckboxListTile(
                title: Text(
                  'Remember Password ',
                  style: SafeGoogleFont(
                    'Poppins',
                    fontSize: 15 * ffem,
                    fontWeight: FontWeight.w500,
                    height: 1.5 * ffem / fem,
                    color: Color(0xffacacac),
                  ),
                ),
                value: ischeck,
                activeColor: const Color(0xffff6e03),
                onChanged: (value) {
                  setState(() {
                    ischeck = value;
                  });
                },
              ),

              Padding(
                padding:
                    EdgeInsets.fromLTRB(84 * fem, 0 * fem, 69 * fem, 15 * fem),
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

              Container(
                // forgottenpasswordjRC (2:54)
                margin:
                    EdgeInsets.fromLTRB(15 * fem, 0 * fem, 0 * fem, 0 * fem),
                child: GestureDetector(
                  child: RichText(
                    text: TextSpan(
                      text: 'Forgotten Password ?',
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 15 * ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.5 * ffem / fem,
                        decoration: TextDecoration.underline,
                        color: Color(0xffacacac),
                        decorationColor: Color(0xffacacac),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, Register.id);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
