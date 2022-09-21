import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intern_us/screens/login/login.dart';

 

void main() {
  runApp(SplashScreen());
}

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = Duration(seconds: 5);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) => LoginScreen()
    ));
  }

  @override
  Widget build(BuildContext context) {
    return initWidget(context);
  }

  Widget initWidget(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
               // color: new Color(0xffF5591F),
               color: Colors.deepPurple[100],
                gradient: LinearGradient(colors: [(Color.fromARGB(255, 10, 1, 12)), Color.fromARGB(255, 23, 1, 24)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter
                )
            ),
          ),
          Center(
            child: Container(
             child: Image.asset("assets/ic2.png"),
            ),
          )
        ],
      ),
    );
  }
}