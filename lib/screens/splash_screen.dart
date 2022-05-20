import 'dart:async';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:lotto/constant.dart';
import 'package:lotto/screens/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  splashScreenTimer(){
    Timer(Duration(seconds: 3), () async{
     Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const Home()));
    });
  }
  @override
  void initState() {
    splashScreenTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white,
              kMyBlueColor,
            ]
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 60),
          child: Center(
            child: SizedBox(
            width: 250.0,
            height: 100,
            child: DefaultTextStyle(
              style: const TextStyle(
                fontSize: 70,
                fontFamily: 'Pacifico',
                color: Colors.black,
              ),
              child: AnimatedTextKit(
                  animatedTexts: [
                    TyperAnimatedText('LOTTO',
                    speed: Duration(milliseconds: 500)),
                  ]
            //       onTap: () {
            // print("Tap Event");
            // },
            ),
      ),
    ),
          ),
        ),
      ),
    );
  }
}
