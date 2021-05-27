import 'package:flutter/material.dart';
import 'package:etiqh/assesments/assesment2/healthfacilityassesment2.dart/assesmentbutton2.dart';
import 'package:etiqh/theme/theme.dart';
import 'package:etiqh/assesments/assesment2/healthfacilityassesment2.dart/assesmentwidget.dart';

import 'new.dart';

class calling extends StatefulWidget {
  @override
  _callingState createState() => _callingState();
}

class _callingState extends State<calling> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                newbutton2(Icons.account_balance_wallet_outlined, "Hafsa Talat",
                    () {}, "22/02/2021 , 23/02/2021", "Active"),
                newbutton2(Icons.home, "Isna Arif", () {},
                    "22/02/2021 , 23/02/2021", "Active"),
                newbutton2(Icons.code, "hafsa Talat", () {},
                    "22/02/2021 , 23/02/2021", "Active"),
                newbutton2(Icons.developer_mode, "Mohsin Rizvi", () {},
                    "22/02/2021 , 23/02/2021", "Active"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
