

import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class AppTheme{
  static const Color primary = Colors.green;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
   //Color Primario
    primaryColor: Colors.indigo,

    //AppBar Theme
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0
    ),

    //ATextButton Theme
    textButtonTheme:  TextButtonThemeData(
      style: TextButton.styleFrom(primary: primary)
      
    ),

    //FlotingActionButtons
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
      elevation: 0
    ),
    //EletedButtons
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: primary,
        shape: const StadiumBorder(),
        elevation: 0
      ),
    )


  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
   //Color Primario
    primaryColor: Colors.indigo,

    //AppBar Theme
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0
    ),
    scaffoldBackgroundColor: Colors.black
  );
}