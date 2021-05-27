import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:nice_button/NiceButton.dart';
import 'package:page_transition/page_transition.dart';
import 'package:etiqh/dashboardscreens/dashboard.dart';
import 'package:etiqh/theme/theme.dart';

import 'assesmentwidget.dart';

class assesmenttwoform extends StatefulWidget {
  @override
  _assesmenttwoformState createState() => _assesmenttwoformState();
}

class _assesmenttwoformState extends State<assesmenttwoform>
    with TickerProviderStateMixin {
  @override
  TabController controller;
  final TextEditingController Interviewee = TextEditingController();
  final TextEditingController healthofficer = TextEditingController();

  void initState() {
    super.initState();
    controller = new TabController(length: 2, vsync: this);
  }

  final formstate = new GlobalKey<FormState>();

  Widget ShowCard() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Center(
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Form(
                key: formstate,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "Interviewee Details",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Material(
                      elevation: 6.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        controller: Interviewee,
                        onEditingComplete: () =>
                            FocusScope.of(context).nextFocus(),
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 14),
                          border: InputBorder.none,
                          labelText: "Interviewee Name",
                          hintText: "Interviewee Name ",
                        ),
                        validator: (val) {
                          if (val.isEmpty) {
                            return 'Enter Name ';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Material(
                      elevation: 6.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: TextFormField(
                        controller: healthofficer,
                        keyboardType: TextInputType.text,
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 14),
                          border: InputBorder.none,
                          labelText: "Interviewee Title",
                          hintText: "Interviewee Title ",
                        ),
                        validator: (val) {
                          if (val.isEmpty) {
                            return 'Enter title';
                          }
                          return null;
                        },
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TextButton(
                          child: const Text('Save'),
                          onPressed: () {
                            if (formstate.currentState.validate()) {
                              formstate.currentState.save();
                              Navigator.pop(context);
                            }
                          },
                        ),
                        const SizedBox(width: 8),
                        TextButton(
                          child: const Text('Continue'),
                          onPressed: () {
                            if (formstate.currentState.validate()) {
                              formstate.currentState.save();
                              Navigator.pop(context);
                            }
                          },
                        ),
                        const SizedBox(width: 8),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Etique",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(
            'Assesment 2',
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          backgroundColor: MyColors.primaryColor,
          // elevation: 30.0,
          // centerTitle: true,
          titleSpacing: 70.0,
          // toolbarOpacity: 0.5,
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: BackGroundColor,
              ),
              onPressed: () {
                Navigator.pop(context);
              }),
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.add,
                  color: BackGroundColor,
                ),
                onPressed: () {
                  ShowCard();
                })
          ],
          bottom: new TabBar(controller: controller, tabs: [
            new Tab(
              text: "In-Progress",
            ),
            new Tab(
              text: "Completed",
            ),
          ]),
        ),
        body: new TabBarView(
          controller: controller,
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  assesments2button(Icons.home, "Hafsa Talat", () {},
                      "22/02/2021 , 23/02/2021", "0/67"),
                  SizedBox(
                    height: 20,
                  ),
                  assesments2button(Icons.home, "Asna Arif", () {},
                      "22/02/2021 , 23/02/2021", "0/67"),
                  SizedBox(
                    height: 20,
                  ),
                  assesments2button(Icons.home, "Mohsin Rizvi", () {},
                      "22/02/2021 , 23/02/2021", "0/67"),
                  SizedBox(
                    height: 20,
                  ),
                  assesments2button(Icons.home, "Asna Arif", () {},
                      "22/02/2021 , 23/02/2021", "0/67"),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  assesments2button(Icons.home, "Hafsa Talat", () {},
                      "22/02/2021 , 23/02/2021", "50%"),
                  SizedBox(
                    height: 20,
                  ),
                  assesments2button(Icons.home, "Asna Arif", () {},
                      "22/02/2021 , 23/02/2021", "50%"),
                  SizedBox(
                    height: 20,
                  ),
                  assesments2button(Icons.home, "Mohsin Rizvi", () {},
                      "22/02/2021 , 23/02/2021", "100%"),
                  SizedBox(
                    height: 20,
                  ),
                  assesments2button(Icons.home, "Asna Arif", () {},
                      "22/02/2021 , 23/02/2021", "50%"),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: Material(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
          child: AnimatedButton(
            text: 'Add Interviewee',
            color: MyColors.primaryColor,
            width: 200,
            pressEvent: () {
              AwesomeDialog dialog;
              dialog = AwesomeDialog(
                context: context,
                animType: AnimType.SCALE,
                dialogType: DialogType.INFO,
                keyboardAware: true,
                body: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      // Text(
                      //   'Info Data',
                      //   style: Theme.of(context).textTheme.headline6,
                      // ),
                      SizedBox(
                        height: 10,
                      ),
                      Material(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        color: Colors.blueGrey.withAlpha(40),
                        child: TextFormField(
                          autofocus: true,
                          minLines: 1,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            labelStyle: TextStyle(
                              color: MyColors.primaryColor,
                            ),
                            labelText: 'Interviewee Name',
                            prefixIcon: Icon(
                              Icons.person,
                              color: MyColors.primaryColor,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Material(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        color: Colors.blueGrey.withAlpha(40),
                        child: TextFormField(
                          autofocus: true,
                          // keyboardType: TextInputType.multiline,
                          maxLengthEnforced: true,
                          minLines: 1,
                          maxLines: null,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            labelStyle: TextStyle(
                              color: MyColors.primaryColor,
                            ),
                            labelText: 'Interviewee Title',
                            prefixIcon: Icon(
                              Icons.account_box,
                              color: MyColors.primaryColor,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Padding(
                            padding: EdgeInsets.all(5),
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                // side: BorderSide(color: Colors.white),
                              ),
                              color: MyColors.primaryColor,
                              onPressed: () {},
                              child: Text(
                                "Save",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                          )),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(5),
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  // side: BorderSide(color: Colors.white),
                                ),
                                color: MyColors.primaryColor,
                                onPressed: () {},
                                child: Text(
                                  "Continue",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                              ),
                            ),
                          ),

                          // NiceButton(
                          //   width: 100,
                          //   elevation: 8.0,
                          //   radius: 20.0,
                          //   // text: "Login",
                          //   // textColor: ,
                          //   text: "test?",
                          //   background: MyColors.primaryColor,
                          //   onPressed: () {
                          //     Navigator.push(
                          //       context,
                          //       PageTransition(
                          //         type: PageTransitionType.rightToLeftWithFade,
                          //         child: Userdashboard(),
                          //       ),
                          //     );
                          //   },
                          // ),
                          // NiceButton(
                          //   width: 100,
                          //   elevation: 8.0,
                          //   radius: 20.0,
                          //   text: "Login",
                          //   background: MyColors.primaryColor,
                          //   onPressed: () {
                          //     Navigator.push(
                          //       context,
                          //       PageTransition(
                          //         type: PageTransitionType.rightToLeftWithFade,
                          //         child: Userdashboard(),
                          //       ),
                          //     );
                          //   },
                          // ),
                          // Expanded(
                          //   child: AnimatedButton(
                          //       // width: 20,
                          //       text: 'Save',
                          //       color: MyColors.primaryColor,
                          //       pressEvent: () {
                          //         dialog.dissmiss();
                          //       }),
                          // ),
                          // Expanded(
                          //   flex: 2,
                          //   child: AnimatedButton(
                          //       color: MyColors.primaryColor,
                          //       text: 'Continue',
                          //       pressEvent: () {
                          //         dialog.dissmiss();
                          //       }),
                          // ),
                        ],
                      )
                    ],
                  ),
                ),
              )..show();
            },
          ),
        ),
      ),
    );
  }
}
