import "package:flutter/material.dart";
import 'package:etiqh/theme/theme.dart';

class healthfacilitybutton extends StatelessWidget {
  final IconData icn;
  final String name;
  final Function onPress;
  healthfacilitybutton(this.icn, this.name, this.onPress);
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10),
      height: 60,
      width: double.infinity,
      padding: const EdgeInsets.all(5),
      // decoration: BoxDecoration(
      //   color: Colors.white,
      //   borderRadius: BorderRadius.only(
      //       topLeft: Radius.circular(10),
      //       topRight: Radius.circular(10),
      //       bottomLeft: Radius.circular(10),
      //       bottomRight: Radius.circular(10)),
      //   // boxShadow: [
      //   //   BoxShadow(
      //   //     color: Colors.grey.withOpacity(0.5),
      //   //     spreadRadius: 5,
      //   //     blurRadius: 7,
      //   //     offset: Offset(0, 3), // changes position of shadow
      //   //   ),
      //   // ],
      // ),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            side: BorderSide(color: MyColors.primaryColor)),
        color: Colors.white,
        onPressed: onPress,
        child: Row(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.0),
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
                  size: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                name.toUpperCase(),
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Raleway',
                    fontStyle: FontStyle.italic),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
