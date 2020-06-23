import 'package:flutter/material.dart';
import 'package:mobile_mini_project/ui/pages/loginPage.dart';
import 'package:mobile_mini_project/ui/pages/pickYourCardPage.dart';
import 'package:mobile_mini_project/ui/pages/signUpPage.dart';
import 'package:mobile_mini_project/ui/pages/splashSCreen.dart';
import 'package:mobile_mini_project/ui/pages/welcomeHomePage.dart';
import 'package:mobile_mini_project/utils/appColors.dart';

import 'ui/pages/passwordSignInPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobile Mini Project',
      theme: ThemeData(
        primaryColor: AppColors.greenColor,
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        cursorColor: AppColors.greenColor,
      ),
      home: SplashScreen(),
      routes: {
        LoginPage.routeName: (context) => LoginPage(),
        SignUpPage.routeName: (context) => SignUpPage(),
        PasswordSignInPage.routeName: (context) => PasswordSignInPage(),
        WelcomeHomePage.routeName: (context) => WelcomeHomePage(),
        PickYourCardPage.routeName: (context) => PickYourCardPage()
      },
    );
  }
}
