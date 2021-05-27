import 'package:flutter/material.dart';

class Snackquestion extends StatefulWidget {
  @override
  _SnackquestionState createState() => _SnackquestionState();
}

class _SnackquestionState extends State<Snackquestion> {
  bool swvalue = false;
  void smethod(val) {
    setState(() {
      swvalue = val;
      print('$swvalue');
    });
  }

  bool swvalue1 = false;
  void smethod1(val) {
    setState(() {
      swvalue1 = val;
      print('$swvalue');
    });
  }

  bool swvalue2 = false;
  void smethod2(val) {
    setState(() {
      swvalue2 = val;
      print('$swvalue');
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
                  Switch(
                    value: swvalue,
                    onChanged: (bool swbool) {
                      smethod(swbool);
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
                  Switch(
                    value: swvalue1,
                    onChanged: (bool swbool) {
                      smethod1(swbool);
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
                  Switch(
                    value: swvalue2,
                    onChanged: (bool swbool) {
                      smethod2(swbool);
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
