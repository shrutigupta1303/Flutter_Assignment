import 'package:flutter/material.dart';
import 'package:neostore_app/main.dart';

class MyWalletPage extends StatefulWidget {
  @override
  _MyWalletPageState createState() => _MyWalletPageState();
}

class _MyWalletPageState extends State<MyWalletPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Wallet"),
        backgroundColor: appColor,
      ),
    );
  }
}
