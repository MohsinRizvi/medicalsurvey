import "package:flutter/material.dart";
import 'package:page_transition/page_transition.dart';

import 'package:etiqh/assesments/assesment2/healthfacilityassesment2.dart/assesmentbutton2.dart';
import 'package:etiqh/theme/theme.dart';

import 'package:etiqh/widgets/search.dart';

import 'assesment2form.dart';

class healthfacilityassesmenttwo extends StatefulWidget {
  @override
  _healthfacilityassesmenttwoState createState() =>
      _healthfacilityassesmenttwoState();
}

class _healthfacilityassesmenttwoState
    extends State<healthfacilityassesmenttwo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: BackGroundColor,
        appBar: AppBar(
          title: Text(
            'Assesment Two',
            textAlign: TextAlign.left,
            style: TextStyle(color: MyColors.primaryColor, fontSize: 15),
          ),
          // centerTitle: true,
          backgroundColor: BackGroundColor,
          elevation: 30.0,
          titleSpacing: 70.0,
          // toolbarOpacity: 0.5,
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: MyColors.primaryColor,
              ),
              onPressed: () {
                Navigator.pop(context);
              }),
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.add,
                  color: MyColors.primaryColor,
                ),
                onPressed: () {
                  Navigator.pop(context);
                })
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                search(),
                Padding(
                  padding: const EdgeInsets.fromLTRB(14.0, 8.0, 14.0, 8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Health Facility 2 Assesments",
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "Add Assesments",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: MyColors.primaryColor, fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      assesmentsbutton2(
                          Icons.home, "Physical Enviroment and Equipement", () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.rightToLeftWithFade,
                            child: assesmenttwoform(),
                          ),
                        );
                      }, "Completed: 01", "In-Progress: 01"),
                      assesmentsbutton2(Icons.home, "Job Expectation", () {},
                          "Completed: 01", "In-Progress: 01"),
                      assesmentsbutton2(Icons.home, "Management and hospital",
                          () {}, "Completed: 01", "In-Progress: 01"),
                      assesmentsbutton2(
                          Icons.home,
                          "Physical Enviroment and Equipement",
                          () {},
                          "Completed: 01",
                          "In-Progress: 01"),
                      assesmentsbutton2(Icons.home, "Staff Motication", () {},
                          "Completed: 01", "In-Progress: 01"),
                      assesmentsbutton2(
                          Icons.home,
                          "Physical Enviroment and Equipement",
                          () {},
                          "Completed: 01",
                          "In-Progress: 01"),
                      assesmentsbutton2(Icons.home, "Health Requirements",
                          () {}, "Completed: 01", "In-Progress: 01"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
