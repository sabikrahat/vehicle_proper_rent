import 'package:flutter/material.dart' show AppBarTheme, Brightness, Colors, FontWeight, InputDecorationTheme, TextStyle, ThemeData, VisualDensity;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show Brightness, SystemUiOverlayStyle;
import 'package:vehicle_proper_rent/helpers/constants/constants.dart';

SystemUiOverlayStyle lightUiConfig = SystemUiOverlayStyle(
  systemNavigationBarIconBrightness: Brightness.dark,
  systemNavigationBarColor: Colors.white,
  statusBarIconBrightness: Brightness.dark,
  statusBarColor: kLightPrimaryColor,
);

ThemeData lightTheme = ThemeData(
  appBarTheme: lightAppBarTheme,
  backgroundColor: white,
  // fontFamily: GoogleFonts.droidSans().fontFamily,
  // iconTheme: lightIconThemeData,
  inputDecorationTheme: lightInputDecorationTheme,
  scaffoldBackgroundColor: white,
  visualDensity: VisualDensity.adaptivePlatformDensity,
);

AppBarTheme lightAppBarTheme = AppBarTheme(
  elevation: 0.0,
  backgroundColor: kLightPrimaryColor,
  titleTextStyle: const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  ),
);

// IconThemeData lightIconThemeData = IconThemeData(color: kLightPrimaryColor);

InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
  floatingLabelBehavior: FloatingLabelBehavior.always,
  contentPadding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
  enabledBorder: lightOutlineInputBorder,
  focusedBorder: lightOutlineInputBorder,
  border: lightOutlineInputBorder,
);

OutlineInputBorder lightOutlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(28),
  gapPadding: 10,
);

const BoxDecoration lightTabDecoration = BoxDecoration(
  borderRadius: BorderRadius.all(Radius.circular(30)),
);
