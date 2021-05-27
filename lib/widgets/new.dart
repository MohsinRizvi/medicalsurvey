import "package:flutter/material.dart";
import 'package:etiqh/theme/theme.dart';

class newbutton2 extends StatelessWidget {
  final IconData icn;
  final String name, progress, status;
  final Function onPress;

  newbutton2(this.icn, this.name, this.onPress, this.status, this.progress);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 100,
      width: double.infinity,
      child: RaisedButton(
          padding: EdgeInsets.only(top: 15, left: 10, bottom: 5),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
              side: BorderSide(color: MyColors.primaryColor)),
          color: Colors.white,
          onPressed: onPress,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
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
                  padding: const EdgeInsets.all(0.0),
                  child: Icon(
                    icn,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      name.toUpperCase(),
                      style:
                          TextStyle(color: MyColors.primaryColor, fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      status.toUpperCase(),
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ),
                ],
              ),
              Spacer(),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  margin: EdgeInsets.only(right: 5),
                  decoration: BoxDecoration(
                      color: MyColors.primaryColor,
                      borderRadius: BorderRadius.circular(40)),
                  child: Text(
                    progress.toUpperCase(),
                    style: TextStyle(color: Colors.white),
                  )),
            ],
          )),
    );
  }
}
