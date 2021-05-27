import 'package:flutter/material.dart';

class Textquestion extends StatefulWidget {
  @override
  _TextquestionState createState() => _TextquestionState();
}

class _TextquestionState extends State<Textquestion> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0.0, 0, .0, .0),
        child: Material(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.grey.withOpacity(0.2),
          elevation: 0.0,
          child: Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: ListTile(
              title: TextFormField(
                maxLength: 50,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.grey.withOpacity(0.0), width: 2.0),
                    ),
                    icon: Icon(Icons.question_answer),
                    border: InputBorder.none),
                validator: (value) {
                  if (value.isEmpty) {
                    return "The name field cannot be empty";
                  }
                  return null;
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
