import "package:flutter/material.dart";
import 'package:etiqh/theme/theme.dart';

class assesmentsbutton extends StatelessWidget {
  final IconData icn;
  final String name, date;
  final Function onPress;

  assesmentsbutton(this.icn, this.name, this.onPress, this.date);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 100,
      width: double.infinity,
      child: RaisedButton(
          color: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
              side: BorderSide(color: MyColors.primaryColor)),
          padding: EdgeInsets.only(top: 15, left: 10, bottom: 5),
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
                    padding: const EdgeInsets.all(10.0),
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
                      padding: const EdgeInsets.only(top: 0.0),
                      child: Icon(
                        icn,
                        color: Colors.white,
                        size: 20,
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
                        date.toUpperCase(),
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
                ],
              )
            ],
          )),
    );
  }
}
