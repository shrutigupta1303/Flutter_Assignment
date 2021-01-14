import 'package:flutter/material.dart';
import 'package:neostore_app/main.dart';

import 'login_screen.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUpView(),
    );
  }
}

class SignUpView extends StatefulWidget {
  @override
  SignUpPage createState() => SignUpPage();
}

class SignUpPage extends State<SignUpView> {
  int selectedRadio;
  bool _pressed = false;

  bool get pressed {
    return _pressed;
  }

  set pressed(bool pressed) {
    _pressed = pressed;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedRadio = 0;
  }

  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    // TODO: implement build
    return Scaffold(
        backgroundColor: appColor,
        appBar: AppBar(
          
          title: Text(
            "Register",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () =>
                Navigator.of(context, rootNavigator: true).pop(context),
           // Navigator.of(context).maybePop(),
           // Navigator.pop(context),
          ),

          backgroundColor: appColor,
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Column(children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Text(
                "NeoSTORE",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Gotham Bold",
                  fontWeight: FontWeight.bold,
                  fontSize: 50.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: TextFormField(
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Gotham Mediumm",
                  //fontWeight: FontWeight.normal,
                  fontSize: 20.0,
                ),
                cursorColor: Colors.white,
                decoration: InputDecoration(
                  hintText: "First Name",
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
              padding: const EdgeInsets.only(top: 20.0),
              child: TextFormField(
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Gotham Mediumm",
                  //fontWeight: FontWeight.normal,
                  fontSize: 20.0,
                ),
                cursorColor: Colors.white,
                decoration: InputDecoration(
                  hintText: "Last Name",
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
              padding: const EdgeInsets.only(top: 20.0),
              child: TextFormField(
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Gotham Mediumm",
                  //fontWeight: FontWeight.normal,
                  fontSize: 20.0,
                ),
                cursorColor: Colors.white,
                decoration: InputDecoration(
                  hintText: "Email",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 1),
                  ),
                  focusedBorder: new OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 1),
                  ),
                  prefixIcon: const Icon(
                    Icons.email,
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
                  hintText: "Confirm Password",
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 40.0),
                    child: Text(
                      "Gender",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Gotham Mediumm",
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  Radio(
                    value: 1,
                    groupValue: selectedRadio,
                    activeColor: Colors.white,
                    onChanged: (val) {
                      print("radio value $val");
                      setSelectedRadio(val);
                    },
                  ),
                  Text(
                    'Male',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Gotham Mediumm",
                      fontSize: 18.0,
                    ),
                  ),
                  Radio(
                    value: 2,
                    groupValue: selectedRadio,
                    activeColor: Colors.white,
                    onChanged: (val) {
                      print("radio value $val");
                      setSelectedRadio(val);
                    },
                  ),
                  Text(
                    'Female',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Gotham Mediumm",
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: TextFormField(
                keyboardType: TextInputType.phone,
                cursorColor: Colors.white,
                obscureText: true,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Gotham Medium",
                  // fontWeight: FontWeight.normal,
                  fontSize: 20.0,
                ),
                decoration: InputDecoration(
                  hintText: "Phone Number",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 1),
                  ),
                  focusedBorder: new OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 1),
                  ),
                  prefixIcon: const Icon(
                    Icons.phone_android,
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
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left : 25.0 ,right:20.0),
                    child: Container(
                      height: 40,
                      width: 40,
                      color: appColor,
                      child: RaisedButton(
                        color: appColor,
                        elevation: 0.0,
                        onPressed: () {
                          setState(() {
                            pressed = !pressed;
                          });
                        },
                        child: pressed
                            ? Icon(Icons.radio_button_unchecked)
                            : new Icon(Icons.check_circle),
                      ),
                    ),
                  ),
                  Text(
                    "I agree the Terms & Conditions",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Gotham Mediumm",
                      //fontWeight: FontWeight.normal,
                      fontSize: 15.0,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0,bottom: 10),
              child: SizedBox(
                width: width - 60,
                height: 50.0,
                child: RaisedButton(
                  color: Colors.white,
                  disabledColor: Colors.white,
                  child: Text(
                    "REGISTER",
                    style: TextStyle(
                      color: appTextColor,
                      fontFamily: "Gotham Bold",
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          ]),
        )));
  }
}
