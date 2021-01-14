import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:neostore_app/Dashboard_screens/home.dart';
import 'package:neostore_app/login_features/signup_screen.dart';
import 'package:neostore_app/main.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      // routes: <String , WidgetBuilder> {
      //   '/signUpScreen':(BuildContext context) =>  SignUpScreen(),
      // },
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  LoginView createState() => LoginView();
}

class LoginView extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    // TODO: implement build
    return Scaffold(
      backgroundColor: appColor,
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 50, left: 30, right: 30),
            child: Text(
              "NeoSTORE",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Gotham Bold",
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 50, left: 30, right: 30),
            child: TextFormField(
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Gotham Mediumm",
                //fontWeight: FontWeight.normal,
                fontSize: 20.0,
              ),
              cursorColor: Colors.white,
              decoration: InputDecoration(
                hintText: "Username",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 1),
                ),
                focusedBorder: new OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 1),
                ),
                prefixIcon: const Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                hintStyle: TextStyle(
                  color: Colors.white,
                  fontFamily: "Gotham Medium",
                  // fontWeight: FontWeight.normal,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
            child: TextFormField(
              cursorColor: Colors.white,
              obscureText: true,
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Gotham Medium",
                // fontWeight: FontWeight.normal,
                fontSize: 20.0,
              ),
              decoration: InputDecoration(
                hintText: "Password",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 1),
                ),
                focusedBorder: new OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 1),
                ),
                prefixIcon: const Icon(
                  Icons.lock,
                  color: Colors.white,
                ),
                hintStyle: TextStyle(
                  color: Colors.white,
                  fontFamily: "Gotham Medium",
                  // fontWeight: FontWeight.normal,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: SizedBox(
              width: width - 60,
              height: 50.0,
              child: RaisedButton(
                color: Colors.white,
                disabledColor: Colors.white,
                child: Text(
                  "LOGIN",
                  style: TextStyle(
                    color: appTextColor,
                    fontFamily: "Gotham Bold",
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                      builder: (context) => HomePage()));
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: RaisedButton(
              color: appColor,
              elevation: 0.0,
              disabledColor: appColor,
              child: Text(
                "OR",//Forgot password?
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Gotham Medium",
                  //fontWeight: FontWeight.normal,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "DON'T HAVE AN ACCOUNT?",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Gotham Medium",
                    fontWeight: FontWeight.normal,
                    fontSize: 18.0,
                  ),
                ),
                Container(
                    height: 50,
                    width: 50,
                    color: redDarkColor,
                    child: IconButton(
                      icon: Image.asset("assets/Plus-icon.png"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpScreen()),
                        );
                       // Navigator.pushNamed(context, '/signUpScreen');
                      },
                    ))
              ],
            ),
          )
        ],
      )),
    );
  }
}
