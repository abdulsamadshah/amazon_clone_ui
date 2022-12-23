import 'dart:async';

import 'package:flutter/material.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () {

    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffff),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("images/amazon.png")),
            ),
          )

        ],
      ),
    );
  }
}
