// ignore_for_file: avoid_classes_with_only_static_members

import 'package:flutter/material.dart';

/// Height of the  card.
const double projectCardHeight = 720;

/// Width of the  card.
const double projectCardWidth = 480;

class Themes {
  static final light = ThemeData(
    primaryColor: const Color(0xff00838F),
    fontFamily: 'Roboto',
    // primaryColorLight: const Color(0xff4fb3bf),
    // primaryColorDark: const Color(0xff005662),
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        TargetPlatform.linux: FadeUpwardsPageTransitionsBuilder(),
        TargetPlatform.macOS: CupertinoPageTransitionsBuilder(),
        TargetPlatform.windows: FadeUpwardsPageTransitionsBuilder(),
      },
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xff00838F),
      foregroundColor: Colors.white,
      titleTextStyle: TextStyle(color: Colors.white),
      iconTheme: IconThemeData(color: Colors.white),
    ),
    cardColor: Colors.white,
    cardTheme: const CardTheme(
      color: Colors.white,
      shadowColor: Colors.black,
    ),
  );

  static final dark = ThemeData(
    brightness: Brightness.dark,
    fontFamily: 'NotoSansKR',
    primaryColor: const Color(0xff212121),
    // primaryColorLight: Color(0xff484848),
    // primaryColorDark: Color(0xff1b1b1b),
    listTileTheme: const ListTileThemeData(
      selectedTileColor: Color(0xff005662),
      selectedColor: Colors.white,
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all(Colors.white),
        textStyle:
            MaterialStateProperty.all(const TextStyle(color: Colors.black)),
      ),
    ),
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        TargetPlatform.linux: FadeUpwardsPageTransitionsBuilder(),
        TargetPlatform.macOS: CupertinoPageTransitionsBuilder(),
        TargetPlatform.windows: FadeUpwardsPageTransitionsBuilder(),
      },
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all(Colors.black),
        backgroundColor: MaterialStateProperty.all(Colors.white),
        textStyle:
            MaterialStateProperty.all(const TextStyle(color: Colors.black)),
      ),
    ),
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
