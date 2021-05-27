import 'package:flutter/material.dart';
import 'package:nice_button/NiceButton.dart';
import 'package:page_transition/page_transition.dart';
import 'package:etiqh/dashboardscreens/dashboard.dart';
import 'package:etiqh/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool ispassshow = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        // onTap: () {
        //   FocusScope.of(context).unfocus();
        // },
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ClipPath(
                  clipper: WaveClipperTwo(),
                  child: Container(
                    height: 250,
                    color: MyColors.primaryColor,
                    child: Center(
                        child: Text(
                      "eTIQH",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
                // Image.asset(
                //   'images/logo.png',
                // ),
                SizedBox(
                  height: 40,
                ),
                SafeArea(
                    child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Material(
                          elevation: 6.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40)),
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                            onEditingComplete: () =>
                                FocusScope.of(context).nextFocus(),
                            style: TextStyle(fontSize: 18, color: Colors.grey),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(top: 14),
                              prefixIcon: Icon(
                                Icons.email,
                                color: MyColors.primaryColor,
                              ),
                              border: InputBorder.none,
                              hintText: "Enter the Email ",
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Material(
                          elevation: 6.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40)),
                          child: TextField(
                            obscureText: !ispassshow,
                            keyboardType: TextInputType.text,
                            textInputAction: TextInputAction.done,
                            onEditingComplete: () =>
                                FocusScope.of(context).unfocus(),
                            style: TextStyle(fontSize: 18, color: Colors.grey),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(top: 14),
                              prefixIcon: Icon(
                                Icons.lock,
                                color: MyColors.primaryColor,
                              ),
                              border: InputBorder.none,
                              suffixIcon: IconButton(
                                icon: Icon(ispassshow
                                    ? Icons.visibility
                                    : Icons.visibility_off),
                                onPressed: () {
                                  setState(() {
                                    ispassshow = !ispassshow;
                                  });
                                },
                              ),
                              hintText: "Enter the Password ",
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.rightToLeftWithFade,
                                child: Userdashboard(),
                              ),
                            );
                          },
                          child: Container(
                              padding:
                                  const EdgeInsets.only(top: 30, right: 16.0),
                              alignment: Alignment.centerRight,
                              child: Text(
                                "Forgot your password?",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        NiceButton(
                          width: 255,
                          elevation: 8.0,
                          radius: 52.0,
                          text: "Login",
                          background: MyColors.primaryColor,
                          onPressed: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.rightToLeftWithFade,
                                child: Userdashboard(),
                              ),
                            );
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              InkWell(
                                onTap: () {},
                                child: Text("Sync",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        // color: Color(0xFF5d74e3),
                                        fontSize: 20,
                                        fontFamily: "Poppins-Bold")),
                              )
                            ])
                      ],
                    ),
                  ),
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
