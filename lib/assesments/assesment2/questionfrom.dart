import 'package:flutter/material.dart';
import 'package:etiqh/assesments/assesment2/widgetquestions/dropdownquestion.dart';
import 'package:etiqh/assesments/assesment2/widgetquestions/radioquestion.dart';
import 'package:etiqh/assesments/assesment2/widgetquestions/voicequestion/views/recorder_home_view.dart';
import 'package:etiqh/theme/theme.dart';

import 'widgetquestions/checkquestion.dart';
import 'widgetquestions/imagequestion.dart';
import 'widgetquestions/snackquestion.dart';
import 'widgetquestions/textquestion.dart';
import 'widgetquestions/voicequestion/voicequestion.dart';

class questionform2 extends StatefulWidget {
  @override
  _questionform2State createState() => _questionform2State();
}

class _questionform2State extends State<questionform2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primaryColor,
        title: Text(
          "Assesment 2",
          style: TextStyle(color: MyColors.primaryColorLight),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(24),
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RadioQuestion(),
                SizedBox(height: 20),
                dropdwonquestion(),
                SizedBox(height: 20),
                Snackquestion(),
                SizedBox(height: 20),
                Textquestion(),
                SizedBox(height: 20),
                imagequestion(),
                SizedBox(height: 20),
                checkquestion(),
                SizedBox(height: 20),

                // RecorderHomeView(),
                // VoiceQuestion(),
                // _record(),
                // RecorderHomeView(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
