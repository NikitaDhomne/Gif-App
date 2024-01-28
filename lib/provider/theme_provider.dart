import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemes {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black87,
    colorScheme: ColorScheme.dark(),
    appBarTheme: AppBarTheme(
        titleTextStyle: GoogleFonts.lobster(
            color: Color(0xffB7499D),
            fontSize: 30,
            fontWeight: FontWeight.bold),
        iconTheme: IconThemeData(color: Color(0xffB7499D)),
        color: Colors.black45),
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Color(0xffE9E9E9),
    colorScheme: ColorScheme.light(),
    appBarTheme: AppBarTheme(
        titleTextStyle: GoogleFonts.lobster(
            color: Color(0xffB7499D),
            fontSize: 30,
            fontWeight: FontWeight.bold),
        iconTheme: IconThemeData(color: Color(0xffB7499D)),
        color: Color(0XFFE9E9E9)),
  );
}
