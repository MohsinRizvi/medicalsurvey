import 'package:flutter/material.dart';

class dropdwonquestion extends StatefulWidget {
  @override
  _dropdwonquestionState createState() => _dropdwonquestionState();
}

class _dropdwonquestionState extends State<dropdwonquestion> {
  final List<String> Answers = [
    'Answer 6',
    'Answer 5',
    "Answer 4",
    'Answer 3',
    'Answer 2',
    'Answer 1'
  ];
  String _Answers;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 800,
      child: Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 0, .0, .0),
          child: Material(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.grey.withOpacity(0.2),
            elevation: 0.0,
            child: Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: ListTile(
                title: DropdownButtonFormField(
                  value: _Answers,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.pink,
                          width: 2.0,
                        ),
                      ),
                      // hintText: "Location",
                      icon: Icon(Icons.question_answer),
                      border: InputBorder.none),
                  items: Answers.map((Answer) {
                    return DropdownMenuItem(
                      value: Answer,
                      child: Text('$Answer '),
                    );
                  }).toList(),
                  onChanged: (val) => setState(() => _Answers = val),
                ),
              ),
            ),
          )),
    );
  }
}
