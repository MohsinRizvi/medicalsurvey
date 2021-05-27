// import 'package:flutter/material.dart';
// import 'package:etiqh/assesments/assesment2/widgetquestions/voicequestion/views/recorder_home_view.dart';
// import 'package:etiqh/assesments/assesment2/widgetquestions/voicequestion/voicequestion.dart';

// class profile extends StatefulWidget {
//   @override
//   _profileState createState() => _profileState();
// }

// class _profileState extends State<profile> {
//   @override
//   Widget build(BuildContext context) {
//     return VoiceQuestion();
//   }
// }
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import 'package:etiqh/theme/theme.dart';
import 'package:etiqh/widgets/slidebutton.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    final String imgUrl = "";

    return new Stack(
      children: <Widget>[
        new Container(
          color: MyColors.primaryColorLight,
        ),
        new Image.network(
          imgUrl,
          fit: BoxFit.fill,
        ),
        new BackdropFilter(
            filter: new ui.ImageFilter.blur(
              sigmaX: 3.0,
              sigmaY: 3.0,
            ),
            child: new Container(
              decoration: BoxDecoration(
                color: MyColors.primaryColorLight.withOpacity(0.9),
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
              ),
            )),
        new Scaffold(
            appBar: new AppBar(
              centerTitle: false,
              elevation: 0.0,
              backgroundColor: Colors.transparent,
            ),
            drawer: new Drawer(
              child: new Container()
            ),
            backgroundColor: Colors.transparent,
            body: new Center(
              child: new Column(
                children: <Widget>[
                  new SizedBox(
                    height: _height / 12,
                  ),
                  new CircleAvatar(
                    radius: _width < _height ? _width / 8 : _height / 8,
                    backgroundImage: NetworkImage(imgUrl),
                  ),
                  new SizedBox(
                    height: _height / 25.0,
                  ),
                  new Text(
                    'Etique App',
                    style: new TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: _width / 15,
                        color: MyColors.primaryColor),
                  ),
                  new Padding(
                    padding: new EdgeInsets.only(
                        top: _height / 30, left: _width / 8, right: _width / 8),
                    child: new Text(
                      'Agha khan developement network.\nSometime I work at google as Executive Chairman ',
                      style: new TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: _width / 25,
                          color: MyColors.primaryColor),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  new Divider(
                    height: _height / 30,
                    color: MyColors.primaryColor,
                  ),
                  new Row(
                    children: <Widget>[
                      rowCell(343, 'POSTS'),
                      rowCell(673826, 'FOLLOWERS'),
                      rowCell(275, 'FOLLOWING'),
                    ],
                  ),
                  new Divider(
                      height: _height / 30, color: MyColors.primaryColor),
                  // new Padding(
                  //   padding: new EdgeInsets.only(
                  //       left: _width / 8, right: _width / 8),
                  //   child: new FlatButton(
                  //       onPressed: () {},
                  //       child: new Container(
                  //           child: new Row(
                  //         mainAxisAlignment: MainAxisAlignment.center,
                  //         children: <Widget>[
                  //           new Icon(Icons.person),
                  //           new SizedBox(
                  //             width: _width / 30,
                  //           ),
                  //           new Text('FOLLOW')
                  //         ],
                  //       )),
                  //       color: MyColors.primaryColor),
                  // ),
                  CustomSlideButton(),
                ],
              ),
            ))
      ],
    );
  }

  Widget rowCell(int count, String type) => new Expanded(
          child: new Column(
        children: <Widget>[
          new Text(
            '$count',
            style: new TextStyle(color: MyColors.primaryColor),
          ),
          new Text(type,
              style: new TextStyle(
                  color: MyColors.primaryColor, fontWeight: FontWeight.normal))
        ],
      ));
}
