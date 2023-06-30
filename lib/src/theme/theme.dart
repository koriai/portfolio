import 'package:flutter/material.dart';

/// Height of the [project] card.
const double projectCardHeight = 720.0;

/// Width of the [project] card.
const double projectCardWidth = 480.0;

class Themes {
  static final light = ThemeData(
    useMaterial3: true,
    primaryColor: const Color(0xff00838F),
    primaryColorLight: const Color(0xff4fb3bf),
    primaryColorDark: const Color(0xff005662),
    colorScheme: const ColorScheme.light(
      primary: Color(0xff005662),
      surface: Color(0xff4fb3bf),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all(Colors.white),
      textStyle:
          MaterialStateProperty.all(const TextStyle(color: Colors.white)),
      backgroundColor: MaterialStateProperty.all(const Color(0xff00838F)),
    )),
    textTheme: Typography.blackRedmond.copyWith(),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(),
    dividerTheme: const DividerThemeData(
        color: Color.fromRGBO(158, 158, 158, 1),
        thickness: 1,
        indent: 1.0,
        endIndent: 1.0),
    drawerTheme: const DrawerThemeData(
      elevation: 8,
      backgroundColor: Color(0xffFFFFFF),
    ),
    pageTransitionsTheme: const PageTransitionsTheme(builders: {
      TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      TargetPlatform.linux: FadeUpwardsPageTransitionsBuilder(),
      TargetPlatform.macOS: CupertinoPageTransitionsBuilder(),
      TargetPlatform.windows: FadeUpwardsPageTransitionsBuilder(),
    }),
    listTileTheme: const ListTileThemeData(
      selectedTileColor: Color(0xff00838F),
      selectedColor: Colors.white,
    ),
    cardTheme: const CardTheme(
        elevation: 8,
        color: Colors.white,
        surfaceTintColor: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1.0, color: Colors.black),
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
        ),
        shadowColor: Colors.black),
    dialogTheme: const DialogTheme(iconColor: Colors.black),
    snackBarTheme: const SnackBarThemeData(actionTextColor: Colors.white),
  );

  static final dark = ThemeData.dark().copyWith(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: const Color(0xff212121),
    // primaryColorLight: Color(0xff484848),
    // primaryColorDark: Color(0xff1b1b1b),
    listTileTheme: const ListTileThemeData(
        selectedTileColor: Color(0xff005662), selectedColor: Colors.white),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(Colors.white),
          textStyle:
              MaterialStateProperty.all(const TextStyle(color: Colors.black))),
    ),
    pageTransitionsTheme: const PageTransitionsTheme(builders: {
      TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      TargetPlatform.linux: FadeUpwardsPageTransitionsBuilder(),
      TargetPlatform.macOS: CupertinoPageTransitionsBuilder(),
      TargetPlatform.windows: FadeUpwardsPageTransitionsBuilder(),
    }),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all(Colors.black),
      backgroundColor: MaterialStateProperty.all(Colors.white),
      textStyle:
          MaterialStateProperty.all(const TextStyle(color: Colors.black)),
    )),
    progressIndicatorTheme:
        const ProgressIndicatorThemeData(color: Colors.white),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color(0xff484848),
    ),
    snackBarTheme: const SnackBarThemeData(
      backgroundColor: Color(0xFF9E9E9E),
      contentTextStyle: TextStyle(color: Colors.white),
    ),
  );
}
