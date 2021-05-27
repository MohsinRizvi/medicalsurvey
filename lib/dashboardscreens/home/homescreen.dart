import "package:flutter/material.dart";
import 'package:page_transition/page_transition.dart';
import 'package:etiqh/assesments/assesment1/healthfacilityassesment1/healthfacilityassesment1.dart';
import 'package:etiqh/assesments/assesment2/healthfacilityassesment2.dart/assesment2.dart';
import 'package:etiqh/theme/theme.dart';
import 'package:etiqh/widgets/search.dart';

import 'healthfacilitybutton.dart';

class homescreen extends StatefulWidget {
  @override
  _homescreenState createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: BackGroundColor,
        appBar: AppBar(
          title: Text(
            'Dashboard',
            style: TextStyle(color: MyColors.primaryColor, fontSize: 20),
          ),
          centerTitle: true,
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
            // color: Colors.white,
            color: BackGroundColor,
            child: Column(
              children: [
                search(),
                Padding(
                  padding: const EdgeInsets.fromLTRB(14.0, 8.0, 14.0, 8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Health Facility",
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "Add Facility",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: MyColors.primaryColor, fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: BackGroundColor,
                  height: 480,
                  // margin: EdgeInsets.symmetric(horizontal: 40.0),
                  // margin: const EdgeInsets.only(bottom: 40.0),
                  // padding: const EdgeInsets.only(bottom: 10.0, top: 10),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        healthfacilitybutton(Icons.home, "Health Facility 1",
                            () {
                          Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.rightToLeftWithFade,
                              child: healthfacilityassesmentsone(),
                            ),
                          );
                        }),
                        SizedBox(
                          height: 10,
                        ),
                        healthfacilitybutton(Icons.home, "Health Facility 2",
                            () {
                          Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.rightToLeftWithFade,
                              child: healthfacilityassesmenttwo(),
                            ),
                          );
                        }),
                        SizedBox(
                          height: 10,
                        ),
                        healthfacilitybutton(
                            Icons.home, "Health Facility 3", () {}),
                        SizedBox(
                          height: 10,
                        ),
                        healthfacilitybutton(
                            Icons.home, "Health Facility 4", () {}),
                        SizedBox(
                          height: 10,
                        ),
                        healthfacilitybutton(
                            Icons.home, "Health Facility 5", () {}),
                        SizedBox(
                          height: 10,
                        ),
                        healthfacilitybutton(
                            Icons.home, "Health Facility 6", () {}),
                        SizedBox(
                          height: 10,
                        ),
                        healthfacilitybutton(
                            Icons.home, "Health Facility 7", () {}),
                        SizedBox(
                          height: 10,
                        ),
                        healthfacilitybutton(
                            Icons.home, "Health Facility 8", () {}),
                        SizedBox(
                          height: 10,
                        ),
                        healthfacilitybutton(
                            Icons.home, "Health Facility 9", () {}),
                        SizedBox(
                          height: 10,
                        ),
                        healthfacilitybutton(
                            Icons.home, "Health Facility 10", () {}),
                      ],
                    ),
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
