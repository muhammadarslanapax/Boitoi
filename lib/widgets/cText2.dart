import 'package:boitoi/utlils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class cText2 extends StatelessWidget {
  final String text;
  final double? size;
  final Color? color;
  final FontWeight? fontWeight;

  const cText2({
    super.key,
    required this.text,
    this.size,
    this.color,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    final width1 = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Text(
      text,
      style: GoogleFonts.artifika(
          textStyle: Theme.of(context).textTheme.displayLarge,
          fontSize: size ?? width1 * 0.04,
          color: color ?? white,
          fontWeight: fontWeight ?? normal),
    );
  }
}
