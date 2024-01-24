import 'package:clickaeventsp/firebase_options.dart';
import 'package:clickaeventsp/screen/main%20manu/calander.dart';
import 'package:clickaeventsp/screen/main%20manu/mainScreen.dart';
import 'package:clickaeventsp/screen/onboarding/emailVerificationScreen.dart';
import 'package:clickaeventsp/screen/onboarding/loginScreen.dart';
import 'package:clickaeventsp/screen/onboarding/pinVerificationScreen.dart';
import 'package:clickaeventsp/screen/onboarding/registrationScreen.dart';
import 'package:clickaeventsp/screen/onboarding/setPasswordScreen.dart';
import 'package:clickaeventsp/screen/onboarding/splashScreen.dart';
import 'package:clickaeventsp/screen/profile/ProfilePage.dart';
import 'package:clickaeventsp/style/style.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'navbar.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.red,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            foregroundColor: Colors.black,
          ),
        ),
      ),
       title: "Click A Event",
       initialRoute :'/splashScreen',
       routes:{

         '/splashScreen':(context)=> splashScreen(),
         '/login':(context)=> loginScreen(),
         '/SignUpPage':(context)=> registrationScreen(),
         '/emailVerification':(context)=> emailVerificationScreen(),
         '/setPassword':(context)=> setPasswordScreen(),
         '/pinVerification':(context)=> pinVerificationScreen(),
         '/profilePage':(context)=> ProfilePage(),
         '/mainScreen':(context)=> mainScreen(),
         '/Navbar':(context)=> Navbar(),
         '/Calendar':(context)=> Calendar(),

       }
      
    );
  }
}

