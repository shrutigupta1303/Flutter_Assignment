import 'package:flutter/material.dart';
import 'package:neostore_app/login_features/login_screen.dart';
import 'dart:async';
import 'package:neostore_app/main.dart';


class MySplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}
class SplashScreenState extends State<MySplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 1),
            ()=>
                Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => LoginPage()),
            )
       // Navigator.of(context).pushNamed('/loginScreen'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child:Container(
          color: appColor,
          child:Center(
            child: Text("NeoSTORE",textAlign: TextAlign.center,style: TextStyle(
              color: Colors.white,
              fontFamily: "Gotham Bold",
              fontWeight: FontWeight.bold,
              fontSize: 50.0,
              decoration: TextDecoration.none,
            ),
            ),
          )
      ) ,
    );
  }
}