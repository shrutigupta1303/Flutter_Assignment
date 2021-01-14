import 'package:flutter/material.dart';
import 'package:neostore_app/main.dart';

class TenPlusPage extends StatefulWidget {
  @override
  _TenPlusPageState createState() => _TenPlusPageState();
}

class _TenPlusPageState extends State<TenPlusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("10+1 Plan"),
        backgroundColor: appColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 20, left: 30, right: 30),
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
          ],
        ),
      ),
    );
  }
}
