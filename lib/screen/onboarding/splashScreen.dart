import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';



import '../../style/style.dart';
import 'loginScreen.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();

  static void isLogin(BuildContext context) {
    Timer(Duration(seconds: 3),
        ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => loginScreen()))
    );

  }
}

class _splashScreenState extends State<splashScreen> {

  

  @override
  void initState(){
    super.initState();
    splashScreen.isLogin(context);
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Stack(
        children: [
          ScreenBackground(context),
          Container(
            padding: EdgeInsets.all(30),
            child: Center(
                child: SvgPicture.asset("assets/images/logo.svg",alignment: Alignment.center)
            ),
          )
        ],
      ),
    );
  }
}
