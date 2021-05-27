import 'package:flutter/material.dart';
import 'package:slide_button/slide_button.dart';
import 'package:etiqh/theme/theme.dart';

class CustomSlideButton extends StatefulWidget {
  @override
  _CustomSlideButtonState createState() => _CustomSlideButtonState();
}

class _CustomSlideButtonState extends State<CustomSlideButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(50),
      padding: const EdgeInsets.fromLTRB(14.0, 8.0, 14.0, 8.0),
      child: Material(
        borderRadius: BorderRadius.circular(50.0),
        color: MyColors.primaryColor,
        elevation: 0.0,
        child: Container(
          // margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          // margin: EdgeInsets.all(50),
          // padding: const EdgeInsets.all(20),
          child: SlideButton(
            backgroundChild: Center(
              child: Text(
                "Swipe to Confirm!",
                style: TextStyle(color: Colors.white),
              ),
            ),
            borderRadius: 50,
            height: 60,
            slidingChild: Align(
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 14),
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_forward,
                    color: MyColors.primaryColor,
                    size: 30,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            backgroundColor: MyColors.primaryColor,
            slidingBarColor: Colors.white,
            slideDirection: SlideDirection.RIGHT,
          ),
        ),
      ),
    );
  }
}
