import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class imagequestion extends StatefulWidget {
  @override
  _imagequestionState createState() => _imagequestionState();
}

class _imagequestionState extends State<imagequestion> {
  File _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 500,
        child: Column(
          children: [
            Center(
              child: _image == null
                  ? Text('No image selected.')
                  : Image.file(_image),
            ),
            FloatingActionButton(
              onPressed: getImage,
              tooltip: 'Pick Image',
              child: Icon(Icons.add_a_photo),
            ),
          ],
        ));
  }
}
