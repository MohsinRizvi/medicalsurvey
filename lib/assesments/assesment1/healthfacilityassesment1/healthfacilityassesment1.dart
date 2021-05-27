import "package:flutter/material.dart";
import 'package:etiqh/theme/theme.dart';

import 'package:etiqh/widgets/search.dart';

import 'assesmentsbutton.dart';

class healthfacilityassesmentsone extends StatefulWidget {
  @override
  _healthfacilityassesmentsoneState createState() =>
      _healthfacilityassesmentsoneState();
}

class _healthfacilityassesmentsoneState
    extends State<healthfacilityassesmentsone> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: BackGroundColor,
        appBar: AppBar(
          title: Text(
            'Assesment One',
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
                          "Health Facility 1 Assesments",
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
                // Container(
                //   color: Colors.white,
                //   child:
                SingleChildScrollView(
                  child: Column(
                    children: [
                      assesmentsbutton(
                        Icons.home,
                        "Assesments 1",
                        () {},
                        "Date and time 5:00 pm 28/2/2021",
                      ),
                      assesmentsbutton(
                        Icons.home,
                        "Assesments 2",
                        () {},
                        "Date and time 5:00 pm 28/2/2021",
                      ),
                      assesmentsbutton(
                        Icons.home,
                        "Assesments 3",
                        () {},
                        "Date and time 5:00 pm 28/2/2021",
                      ),
                      assesmentsbutton(
                        Icons.home,
                        "Assesments 4",
                        () {},
                        "Date and time 5:00 pm 28/2/2021",
                      ),
                      assesmentsbutton(
                        Icons.home,
                        "Assesments 5",
                        () {},
                        "Date and time 5:00 pm 28/2/2021",
                      ),
                      assesmentsbutton(
                        Icons.home,
                        "Assesments 6",
                        () {},
                        "Date and time 5:00 pm 28/2/2021",
                      ),
                      assesmentsbutton(
                        Icons.home,
                        "Assesments 7",
                        () {},
                        "Date and time 5:00 pm 28/2/2021",
                      ),
                    ],
                  ),
                ),
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
