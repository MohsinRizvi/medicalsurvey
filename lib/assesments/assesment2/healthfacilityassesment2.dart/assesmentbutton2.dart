import "package:flutter/material.dart";
import 'package:etiqh/theme/theme.dart';

class assesmentsbutton2 extends StatelessWidget {
  final IconData icn;
  final String name, progress, status;
  final Function onPress;

  assesmentsbutton2(
      this.icn, this.name, this.onPress, this.status, this.progress);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      child: RaisedButton(
          color: Colors.white,
          onPressed: onPress,
          child: Column(
            children: [
              Column(
                children: [],
              ),
              // Column(children: [

              // ],),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        gradient: LinearGradient(
                            begin: FractionalOffset.bottomCenter,
                            end: FractionalOffset.topLeft,
                            colors: [
                              MyColors.primaryColor,
                              MyColors.primaryColor,
                            ])),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 0.0),
                      child: Icon(
                        icn,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 12.0, bottom: 12, left: 12),
                    child: Text(
                      name.toUpperCase(),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        // fontFamily: '',
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 50.0),
                      child: Text(
                        status.toUpperCase(),
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          // fontFamily: '',
                          // fontStyle: FontStyle.italic
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Text(
                        progress.toUpperCase(),
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          // fontFamily: '',
                          // fontStyle: FontStyle.italic
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          )),
    );
  }
}
