import 'package:flutter/material.dart';
import 'package:neostore_app/main.dart';

class TenPlusPage extends StatefulWidget {
  @override
  _TenPlusOneScreenState createState() => _TenPlusOneScreenState();
}

class _TenPlusOneScreenState extends State<TenPlusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appColor,
        title: Text("10 + 1 Plan",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        padding: new EdgeInsets.all(16.0),
        decoration: new BoxDecoration(color: Colors.white),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            new Card(
              child: new Column(
                children: <Widget>[
                  new Padding(
                      padding: new EdgeInsets.all(7.0),
                      child: new Row(
                        children: <Widget>[

                        ],
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}