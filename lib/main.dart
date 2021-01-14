import 'package:flutter/material.dart';
import 'package:neostore_app/login_features/login_screen.dart';
import 'package:neostore_app/login_features/signup_screen.dart';
import 'package:neostore_app/splash_screen/splash_screen.dart';


void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,

  home: MySplashScreen(),
  // initialRoute: '/',
  // routes: <String , WidgetBuilder> {
  //   '/':(BuildContext context) => MySplashScreen(),
  //   '/loginScreen':(BuildContext context) => LoginScreen(),
  //   '/signUpScreen':(BuildContext context) =>  SignUpScreen(),
  // },
));

Color appColor = Color(0xffE91C1A);
Color appTextColor = Color(0xffe91b1a);
Color redDarkColor = Color(0xff9e0100);
