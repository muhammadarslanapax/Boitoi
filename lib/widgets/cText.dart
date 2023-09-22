import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class cText extends StatelessWidget {
  final String text;
  final FontWeight? fontWeight;
  final Color? color;
  final double? width;
  final int? maxlines;
  final TextAlign? textAlign;
  final double? linespace;
  const cText({super.key, required this.text, this.width, this.maxlines,  this.fontWeight, this.color, this.textAlign, this.linespace});

  @override
  Widget build(BuildContext context) {
     final width1 = MediaQuery.of(context).size.width;
    
    
    return  Text(
      
      textAlign:textAlign??TextAlign.start,
      maxLines: maxlines,
      
      text,style: TextStyle(

        letterSpacing: linespace ,
        
        overflow: TextOverflow.ellipsis,
        
        fontSize: width??width1*0.04,fontWeight: fontWeight ??
     FontWeight.normal,color: color??Colors.black),);
  }
}