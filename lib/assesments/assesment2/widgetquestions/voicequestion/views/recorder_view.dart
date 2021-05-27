import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_audio_recorder/flutter_audio_recorder.dart';
import 'package:path_provider/path_provider.dart';
import 'package:etiqh/theme/theme.dart';

class RecorderView extends StatefulWidget {
  final Function onSaved;

  const RecorderView({Key key, @required this.onSaved}) : super(key: key);
  @override
  _RecorderViewState createState() => _RecorderViewState();
}

enum RecordingState {
  UnSet,
  Set,
  Recording,
  Stopped,
}

class _RecorderViewState extends State<RecorderView> {
  IconData _recordIcon = Icons.mic_none;
  String _recordText = 'Click To Start';
  RecordingState _recordingState = RecordingState.UnSet;

  // Recorder properties
  FlutterAudioRecorder audioRecorder;

  @override
  void initState() {
    super.initState();

    FlutterAudioRecorder.hasPermissions.then((hasPermision) {
      if (hasPermision) {
        _recordingState = RecordingState.Set;
        _recordIcon = Icons.mic;
        _recordText = 'Record';
      }
    });
  }

  @override
  void dispose() {
    _recordingState = RecordingState.UnSet;
    audioRecorder = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        // RaisedButton(
        //   onPressed: () async {
        //     await _onRecordButtonPressed();
        //     setState(() {});
        //   },
        //   shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.circular(50),
        //   ),
        //   child: Material(
        //     elevation: 6.0,
        //     shape:
        //         RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        //     child: Icon(
        //       _recordIcon,
        //       size: 20,
        //     ),
        //   ),
        // ),
        gradientbutton(
          onPress: () async {
            await _onRecordButtonPressed();
            setState(() {});
          },
          icn: _recordIcon,
          name: "Please Record",
        ),
        Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              child: Text(_recordText),
              padding: const EdgeInsets.all(8),
            ))
      ],
    );
  }

  Future<void> _onRecordButtonPressed() async {
    switch (_recordingState) {
      case RecordingState.Set:
        await _recordVoice();
        break;

      case RecordingState.Recording:
        await _stopRecording();
        _recordingState = RecordingState.Stopped;
        _recordIcon = Icons.fiber_manual_record;
        _recordText = 'Record new one';
        break;

      case RecordingState.Stopped:
        await _recordVoice();
        break;

      case RecordingState.UnSet:
        Scaffold.of(context).hideCurrentSnackBar();
        Scaffold.of(context).showSnackBar(SnackBar(
          content: Text('Please allow recording from settings.'),
        ));
        break;
    }
  }

  _initRecorder() async {
    Directory appDirectory = await getApplicationDocumentsDirectory();
    String filePath = appDirectory.path +
        '/' +
        DateTime.now().millisecondsSinceEpoch.toString() +
        '.aac';

    audioRecorder =
        FlutterAudioRecorder(filePath, audioFormat: AudioFormat.AAC);
    await audioRecorder.initialized;
  }

  _startRecording() async {
    await audioRecorder.start();
    // await audioRecorder.current(channel: 0);
  }

  _stopRecording() async {
    await audioRecorder.stop();

    widget.onSaved();
  }

  Future<void> _recordVoice() async {
    if (await FlutterAudioRecorder.hasPermissions) {
      await _initRecorder();

      await _startRecording();
      _recordingState = RecordingState.Recording;
      _recordIcon = Icons.stop;
      _recordText = 'Recording';
    } else {
      Scaffold.of(context).hideCurrentSnackBar();
      Scaffold.of(context).showSnackBar(SnackBar(
        content: Text('Please allow recording from settings.'),
      ));
    }
  }
}
// return MaterialApp(home: Scaffold(body:      Material(
//                         elevation: 6.0,
//                         shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(40)),
//                             child: Row(children: [
//                               Text('New recoding ${widget.records.length }'),
//                                Text(
//             _getDateFromFilePatah(filePath: widget.records.elementAt(i)),),
//                 IconButton(
//                   icon: _selectedIndex == i
//                       ? _isPlaying
//                           ? Icon(Icons.pause)
//                           : Icon(Icons.play_arrow)
//                       : Icon(Icons.play_arrow),
//                   onPressed: () => _onPlay(
//                       filePath: widget.records.first, index: i),
//                 ),

//                             ],

//                             ),

//                       ),
//    ),);

class gradientbutton extends StatelessWidget {
  final Function onPress;
  final IconData icn;
  final String name;
  gradientbutton({this.onPress, this.name, this.icn});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.white,
      onTap: onPress,
      child: Material(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        elevation: 6.0,
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: <Color>[
                MyColors.primaryColor,
                MyColors.primaryColor
              ]),
              borderRadius: BorderRadius.circular(40)),
          height: 50,
          width: MediaQuery.of(context).size.width * 0.70,
          child: Row(
            children: [
              // Row(
              // mainAxisSize: MainAxisSize.min,
              // children: <Widget>[
              Expanded(
                child: Text(
                  name.toUpperCase(),
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              IconButton(
                icon: Icon(
                  icn,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () {},
              ),
              // ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
