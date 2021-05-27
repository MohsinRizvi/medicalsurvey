import 'package:flutter/material.dart';

class RadioQuestion extends StatefulWidget {
  @override
  _RadioQuestionState createState() => _RadioQuestionState();
}

class _RadioQuestionState extends State<RadioQuestion> {
  String gender;
  String groupValue = "male";
  valueChanged(e) {
    setState(() {
      if (e == "male") {
        groupValue = e;
        gender = e;
      } else if (e == "female") {
        groupValue = e;
        gender = e;
      } else if (e == "No") {
        groupValue = e;
        gender = e;
      }
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
                  Radio(
                      value: "male",
                      groupValue: groupValue,
                      onChanged: (e) => valueChanged(e)),
                  Text(
                    "Hello Are you Male?",
                    textAlign: TextAlign.right,
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
              Row(
                children: [
                  Radio(
                      value: "female",
                      groupValue: groupValue,
                      onChanged: (e) => valueChanged(e)),
                  Text(
                    "Hello Are you female?",
                    textAlign: TextAlign.right,
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
              Row(
                children: [
                  Radio(
                      value: "No",
                      groupValue: groupValue,
                      onChanged: (e) => valueChanged(e)),
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
