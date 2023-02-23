import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FontMenor extends StatelessWidget {
  FontMenor(
      {super.key,
      required this.text01,
      required this.text02,
      this.fontw = FontWeight.normal,
      this.fontSize = 14,
      this.colorFontMenor = const Color.fromARGB(158, 0, 0, 0)});
  final String text01;
  final String text02;
  final FontWeight fontw;
  final double fontSize;
  final Color colorFontMenor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text01,
          style: GoogleFonts.rubik(
            fontSize: fontSize,
            color: colorFontMenor,
            fontWeight: fontw,
          ),
        ),
        Text(
          text02,
          style: GoogleFonts.rubik(
            fontSize: fontSize,
            color: colorFontMenor,
            fontWeight: fontw,
          ),
        )
      ],
    );
  }
}
