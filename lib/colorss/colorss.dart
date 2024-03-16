import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color black = Colors.black;
const Color white = Colors.white;
const Color brown = Color(0xFFC0A196);
const Color browndark = Color.fromARGB(255, 247, 220, 210);
const Color borderwhite = Color.fromARGB(180, 186, 176, 173);
const Color borderblack = Color.fromARGB(180, 83, 77, 74);
Color backgroundColor1 = const Color.fromARGB(255, 179, 124, 124);
Color backgroundColor = const Color.fromARGB(255, 227, 183, 183);
Color icon = const Color.fromARGB(255, 228, 186, 186);

// *********   style
const TextStyle styleblack = TextStyle(color: brown, fontSize: 30);
TextStyle stylewhite = GoogleFonts.lobster(
    textStyle:
        const TextStyle(color: white, fontSize: 33, letterSpacing: 2, shadows: [
  Shadow(
      color: Color.fromARGB(255, 175, 158, 76),
      offset: Offset(2, 2),
      blurRadius: 4)
]));
const TextStyle color = TextStyle(
    color: Color.fromARGB(255, 201, 190, 156),
    fontWeight: FontWeight.bold,
    fontSize: 17,
    shadows: [
      Shadow(
          color: Color.fromARGB(255, 35, 32, 23),
          offset: Offset(2, 2),
          blurRadius: 4)
    ]);

const Shadow shadow = Shadow(
    color: Color.fromARGB(255, 175, 158, 76),
    offset: Offset(2, 2),
    blurRadius: 4);

TextStyle googleFonts = GoogleFonts.lobster(
  textStyle:
      const TextStyle(fontSize: 25, letterSpacing: 2, color: Colors.black),
);

// ----------------   SixeBox Extension --------------
extension PaddingSizeBox on num {
  SizedBox get ph => SizedBox(height: toDouble());
  SizedBox get pw => SizedBox(width: toDouble());
}

TextStyle googlefonts = GoogleFonts.lobster(
    textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    letterSpacing: .3,
    color: const Color.fromARGB(221, 69, 6, 6),
    shadows: [
      const Shadow(
          offset: Offset(1.8, 1.6), color: Color.fromARGB(255, 186, 162, 162))
    ]);
