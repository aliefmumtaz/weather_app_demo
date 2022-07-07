import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ColorTheme {
  static Color mainColor = const Color(0xFF1363DF);
  static Color blueAccent1 = const Color(0xFFDFF6FF);
  static Color grey1 = const Color(0xFF747D85);
}

class FontTheme {
  static TextStyle textStyleBlack = GoogleFonts.nunitoSans().copyWith(
    color: const Color(0xFF3E4B58),
  );
  
  static TextStyle textStyleBlackWithOpacity = GoogleFonts.nunitoSans().copyWith(
    color: const Color(0xFF3E4B58).withOpacity(.7),
  );

  static TextStyle textStyleBlackAccent = GoogleFonts.nunitoSans().copyWith(
    color: const Color(0xFF747D85),
  );

  static TextStyle textStyleWhite = GoogleFonts.nunitoSans().copyWith(
    color: const Color(0xFFFEFEFE),
  );

  static TextStyle textStyleWhiteWithOpacity = GoogleFonts.nunitoSans().copyWith(
    color: const Color(0xFFFEFEFE).withOpacity(.7),
  );

  static FontWeight bold = FontWeight.bold;
  static FontWeight semiBold = FontWeight.w600;
}

class SizeTheme {
  static double defaultMargin = 24;
}
