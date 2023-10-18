import 'package:flutter/material.dart';

List<Color> gradientLight = [
  Color(0xFFFFF8E1),
  Color(0xFFFFBB7C),
  Color(0xFFFFECB3),
];

List<Color> gradientLightBody = [
  Color(0xFFFFBB7C),
  Color(0xFFFFF8E1),
];

List<Color> gradientLightBottomBar = [
  Color(0xFFFFF8E1),
  Color(0xFFFFD54F),
  Color(0xFFFFCA28),
];

List<Color> gradientDark = [
  Color(0xFF747DA1),
  Color(0xFF505875),
  Color(0xFF9FA9D6),
];

List<Color> gradientDarkBody = [
  Color(0xFF5F6791),
  Color(0xFF9FA9D6),
];

List<Color> gradientDarkBottomBar = [
  Color(0xFF9FA9D6),
  Color(0xFF5F6791),
  Color(0xFF505875),
];

ThemeData lightTheme = ThemeData(
  appBarTheme: AppBarTheme(
    iconTheme: IconThemeData(
      color: Color(0xFFE96F00),
    ),
  ),
  textTheme: TextTheme(
    bodySmall: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w400,
      fontSize: 16,
    ),
  ),
  colorScheme: ColorScheme.light(
    primaryContainer: Color(0xFFFFF8E1),
    onPrimaryContainer: Colors.black,
    shadow: Color(0x33FFC107),
    outline: Color(0x99FFC107),
    secondaryContainer: Color(0x99FFC107),
    tertiaryContainer: Color(0x66FFC107),
  ),
  bottomAppBarTheme: BottomAppBarTheme(),
  iconTheme: IconThemeData(
    color: Color(0xFFE96F00),
  ),
);

ThemeData darkTheme = ThemeData(
  appBarTheme: AppBarTheme(
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
  ),
  textTheme: TextTheme(
    bodySmall: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w400,
      fontSize: 16,
    ),
  ),
  colorScheme: ColorScheme.dark(
    primaryContainer: Color(0xFF9FA9D6),
    onPrimaryContainer: Colors.white,
    shadow: Color(0x33505875),
    outline: Color(0x999FA9D6),
    secondaryContainer: Color(0x999FA9D6),
    tertiaryContainer: Color(0xFF9FA9D6),
  ),
  bottomAppBarTheme: BottomAppBarTheme(),
  iconTheme: IconThemeData(
    color: Colors.white,
  ),
);

