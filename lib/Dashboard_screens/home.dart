import 'package:flutter/material.dart';
import 'package:neostore_app/Dashboard_screens/contact_us.dart';
import 'package:neostore_app/Dashboard_screens/locate_us.dart';
import 'package:neostore_app/Dashboard_screens/special_offers.dart';
import 'package:neostore_app/drawer_screens/my_wallet.dart';
import 'package:neostore_app/drawer_screens/ten_plus.dart';
import 'package:neostore_app/main.dart';
import 'package:neostore_app/product_list/product_list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Home page"),
          backgroundColor: appTextColor,
        ),
        drawer: Drawer(

          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                    height: 200,
                    child: DrawerHeader(
                        decoration: BoxDecoration(color: appColor),
                        child: Text('NeoSTORE',
                            style:
                            TextStyle(color: Colors.white, fontSize: 30)))),
                Expanded(
                    child: ListView(padding: EdgeInsets.zero, children: [
                      ListTile(
                        leading: Icon(Icons.home),
                        title: Text("HOME"),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => HomePage()));
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.attach_money),
                        title: Text("MY WALLET"),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => MyWalletPage()));
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.create),
                        title: Text("REDEEM"),
                        onTap: () {

                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.local_offer),
                        title: Text("OFFERS"),
                        onTap: () {

                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.add),
                        title: Text("10 + 1 PLAN"),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => TenPlusPage()));
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.add),
                        title: Text("MY GOLD MINE"),
                        onTap: () {

                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.question_answer),
                        title: Text("FAQ"),
                        onTap: () {

                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.link_off),
                        title: Text("LOGOUT"),
                        onTap: () {
                            showAlertDialog(context);
                        },
                      ),

                    ]))
              ]),
        ),
        body: BottomNavigationPage(),
      ),
    );
  }
  showAlertDialog(BuildContext context) {

    // set up the buttons
    Widget continueButton = FlatButton(
      child: Text("Yes"),
      onPressed:  () {
        Navigator.of(context).pop();
      },
    );


    Widget cancelButton = FlatButton(
      child: Text("No"),
      onPressed:  () {
        Navigator.of(context).pop();
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Alert"),
      content: Text("Are you sure ?"),
      actions: [
       continueButton,
        cancelButton,

      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}

class BottomNavigationPage extends StatefulWidget {
  @override
  _BottomNavigationPageState createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {

  int selectedPage = 1;
  final pageOptions = [
    LocateUSPage(),
    TodoList(),
    ContactUSPage(),
    DiscountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(currentIndex: selectedPage,type: BottomNavigationBarType.fixed,items:
      [BottomNavigationBarItem(
          icon: Icon(
              Icons.my_location),title: Text(
          "Locate us"))
        ,BottomNavigationBarItem(
          icon: Icon(Icons.list),title: Text(
          "Products List")),BottomNavigationBarItem(
          icon: Icon(Icons.contacts),title: Text(
          "Contact us")),BottomNavigationBarItem(
          icon: Icon(Icons.local_offer),title: Text(
          "Special offers"))],onTap: (int index){
        debugPrint("tab index is $index");
        setState(() {
          selectedPage = index;
        });
      },),
        body: Center(
          child:pageOptions[selectedPage] ,
        )
    );
  }
}
