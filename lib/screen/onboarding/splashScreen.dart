import 'package:clickaeventsp/screen/widgets/bodyBackground.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:clickaeventsp/screen/onboarding/loginScreen.dart';
import 'package:clickaeventsp/style/style.dart';
import 'package:flutter_svg/svg.dart';

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
      //backgroundColor: Colors.blueAccent,
      body: BodyBackground(
        child: Stack(
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
      ),
    );
  }
}
