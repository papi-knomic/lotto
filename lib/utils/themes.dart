import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lotto/utils/constant.dart';

// class Themes {
//    final lightTheme = ThemeData(
//     primaryColor: Colors.white,
//     scaffoldBackgroundColor: Colors.white,
//     colorScheme: ColorScheme.light(),
//   );
// primaryColor: Color.fromARGB(255, 1, 21, 31),
// scaffoldBackgroundColor: Colors.white,
// textTheme: ,
// buttonTheme: ,
// appBarTheme: AppBarTheme(
//     systemOverlayStyle: SystemUiOverlayStyle.dark,
//     toolbarTextStyle: TextStyle(color: Colors.black),
//     titleTextStyle: TextStyle(color: Colors.black))
//    final darkTheme = ThemeData(
//     scaffoldBackgroundColor: Colors.grey[900],
//     colorScheme: ColorScheme.dark(),
//     primaryColor: Colors.black,
//   );
// }

class Themes {
  //
  Themes._();

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      color: kMyBlueColor,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
    ),
    colorScheme: ColorScheme.light(
      primary: Colors.white,
      onPrimary: Colors.white,
      primaryVariant: Colors.white38,
      secondary: Colors.red,
    ),
    cardTheme: CardTheme(
      color: Colors.white,
    ),
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
    textTheme: TextTheme(
      subtitle1: TextStyle(
        color: Colors.black,
        fontSize: 20.0,
      ),
      subtitle2: TextStyle(
        color: Colors.black,
        fontSize: 18.0,
      ),
    ),
  );

  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: AppBarTheme(
      color: Colors.black,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    colorScheme: ColorScheme.dark(
      primary: Colors.black,
      onPrimary: Colors.black,
      primaryVariant: Colors.black,
      secondary: Colors.red,
    ),
    cardTheme: CardTheme(
      color: Colors.black,
    ),
    iconTheme: IconThemeData(
      color: Colors.white54,
    ),
    textTheme: TextTheme(
      subtitle1: TextStyle(
        color: Colors.white,
        fontSize: 20.0,
      ),
      subtitle2: TextStyle(
        color: Colors.white70,
        fontSize: 18.0,
      ),
    ),
  );
}
