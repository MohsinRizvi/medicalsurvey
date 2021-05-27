import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:etiqh/assesments/assesment2/widgetquestions/voicequestion/views/recorded_list_view.dart';
import 'package:etiqh/assesments/assesment2/widgetquestions/voicequestion/views/recorder_view.dart';

class RecorderHomeView extends StatefulWidget {
  @override
  _RecorderHomeViewState createState() => _RecorderHomeViewState();
}

class _RecorderHomeViewState extends State<RecorderHomeView> {
  Directory appDirectory;
  Stream<FileSystemEntity> fileStream;
  List<String> records;

  @override
  void initState() {
    super.initState();
    records = [];
    getApplicationDocumentsDirectory().then((value) {
      appDirectory = value;
      appDirectory.list().listen((onData) {
        records.add(onData.path);
      }).onDone(() {
        records = records.reversed.toList();
        setState(() {});
      });
    });
  }

  @override
  void dispose() {
    fileStream = null;
    appDirectory = null;
    records = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: RecordListView(records: records)),
          Expanded(
            // flex: 1,
            child: RecorderView(
              onSaved: _onRecordComplete,
            ),
          ),
        ],
      ),
    );
    // return Container(
    //     height: 180,
    //     child: Padding(
    //         padding: const EdgeInsets.fromLTRB(0.0, 0, .0, .0),
    //         child: new Material(
    //             borderRadius: BorderRadius.circular(10.0),
    //             color: Colors.grey.withOpacity(0.2),
    //             elevation: 0.0,
    //             child: Column(children: <Widget>[
    //               Row(
    //                 children: [
    //                   Text(
    //                     "Q1.Hey Please Let Us Know Your job",
    //                     textAlign: TextAlign.right,
    //                     style: TextStyle(
    //                         color: Colors.black,
    //                         fontSize: 15,
    //                         fontWeight: FontWeight.bold),
    //                   ),
    //                 ],
    //               ),
    //               Row(
    //                 children: [
    //                   Row(
    //                     children: [RecordListView(records: records)],
    //                   ),
    //                   Row(
    //                     children: [
    //                       RecorderView(
    //                         onSaved: _onRecordComplete,
    //                       ),
    //                     ],
    //                   ),
    //                 ],
    //               )
    //             ]))));
  }

  _onRecordComplete() {
    records.clear();
    appDirectory.list().listen((onData) {
      records.add(onData.path);
    }).onDone(() {
      records.sort();
      records = records.reversed.toList();
      setState(() {});
    });
  }
}
