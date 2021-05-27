import 'package:flutter/material.dart';

class checkquestion extends StatefulWidget {
  @override
  _checkquestionState createState() => _checkquestionState();
}

class _checkquestionState extends State<checkquestion> {
  bool checkvalue = false;
  void method3(val) {
    setState(() {
      checkvalue = val;
      print('$checkvalue');
    });
  }

  bool checkvalue2 = false;
  void method2(val) {
    setState(() {
      checkvalue2 = val;
      print('$checkvalue');
    });
  }

  bool checkvalue1 = false;
  void method1(val) {
    setState(() {
      checkvalue1 = val;
      print('$checkvalue');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0.0, 0, .0, .0),
        child: new Material(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.grey.withOpacity(0.2),
          elevation: 0.0,
          child: Column(
            children: <Widget>[
              Row(
                children: [
                  Text(
                    "Q1.Hey Please Let Us Know Your Gender",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: checkvalue,
                    onChanged: (bool checkbool) {
                      method3(checkbool);
                    },
                  ),
                  Text(
                    "Hello Are you Male?",
                    textAlign: TextAlign.right,
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: checkvalue2,
                    onChanged: (bool checkbool) {
                      method2(checkbool);
                    },
                  ),
                  Text(
                    "Hello Are you female?",
                    textAlign: TextAlign.right,
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: checkvalue1,
                    onChanged: (bool checkbool) {
                      method1(checkbool);
                    },
                  ),
                  Text(
                    "Prefer Not to say?",
                    textAlign: TextAlign.right,
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
