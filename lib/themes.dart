import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'colors.dart';

Color ltBlue = HexColor("005adc");
Color lterBlue = HexColor("3A8AFD");
Color dkRed = HexColor("BE1E2D");
Color dkGrey = HexColor("A6A6A6");

class Themes extends GetxController {
  static bool isDark = false;

  var buttonStyle = TextStyle(
    fontSize: 20,
    color: Colors.white,
  );

  var dialogStyle = TextStyle(
    fontSize: 19,
    color: isDark ? Colors.white : Colors.blueAccent,
  );

  var dialogBody = TextStyle(
    fontSize: 18,
  );

  get lightTheme => ThemeData.light().copyWith(
        brightness: Brightness.light,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.black,
          primaryVariant: ltBlue,
          secondary: Colors.black,
          secondaryVariant: Colors.black,
        ),
        primaryTextTheme: TextTheme(
            headline1: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 22,
              fontWeight: FontWeight.normal,
              color: Colors.white,
            ),
            headline2: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 18,
              color: Colors.white,
            ),
            headline3: TextStyle(
              fontFamily: 'PoppinsBold',
              fontSize: 20.0,
              color: Colors.black,
            ),
            headline4: TextStyle(
              fontFamily: 'PoppinsBold',
              fontSize: 30.0,
              color: Colors.black,
            ),
            headline5: TextStyle(
              fontFamily: 'PoppinsBold',
              fontSize: 70.0,
              color: Colors.white,
            ),
            headline6: TextStyle(
              color: ltBlue,
              fontFamily: 'PoppinsBold',
              fontWeight: FontWeight.w900,
              fontSize: 17,
            )),
      );

  get darkTheme => ThemeData.dark().copyWith(
        brightness: Brightness.dark,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.black,
          primaryVariant: ltBlue,
          secondary: Colors.white,
          secondaryVariant: Colors.white,
        ),
        primaryTextTheme: TextTheme(
            headline1: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 22,
              fontWeight: FontWeight.normal,
              color: Colors.white,
            ),
            headline2: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 18,
              color: Colors.white,
            ),
            headline3: TextStyle(
              fontFamily: 'PoppinsBold',
              fontSize: 20.0,
              color: Colors.white,
            ),
            headline4: TextStyle(
              fontFamily: 'PoppinsBold',
              fontSize: 30.0,
              color: Colors.white,
            ),
            headline5: TextStyle(
              fontFamily: 'PoppinsBold',
              fontSize: 70.0,
              color: Colors.white,
            ),
            headline6: TextStyle(
              color: ltBlue,
              fontFamily: 'PoppinsBold',
              fontWeight: FontWeight.w900,
              fontSize: 17,
            )),
      );

  void toggleMode() {
    isDark = !isDark;
    isDark ? Get.changeTheme(darkTheme) : Get.changeTheme(lightTheme);
    update();
  }
}
