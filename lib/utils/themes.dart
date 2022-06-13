import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Themes {
  static final lightTheme = ThemeData(
    primaryColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.light(),
  );
  // primaryColor: Color.fromARGB(255, 1, 21, 31),
  // scaffoldBackgroundColor: Colors.white,
  // textTheme: ,
  // buttonTheme: ,
  // appBarTheme: AppBarTheme(
  //     systemOverlayStyle: SystemUiOverlayStyle.dark,
  //     toolbarTextStyle: TextStyle(color: Colors.black),
  //     titleTextStyle: TextStyle(color: Colors.black))
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey[900],
    colorScheme: ColorScheme.dark(),
    primaryColor: Colors.black,
  );
}
