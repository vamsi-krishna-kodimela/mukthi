import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './screens/home_screen/home_Screen.dart';
import './screens/splash_screen/splash_screen.dart';
import './constants/colors.dart';
import './constants/strings.dart';

void main() {
  runApp(RootApp());
}

class RootApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: kAppTitle,
      color: kPrimaryColor,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        accentColor: kAccentColor,
        scaffoldBackgroundColor: kBgColor,
        fontFamily: GoogleFonts.montserrat().fontFamily,
        brightness: Brightness.dark,
      ),

      routes: {
        "/": (_)=>SplashScreen(),
        HomeScreen.routeName : (_)=>HomeScreen(),
      },
    );
  }
}