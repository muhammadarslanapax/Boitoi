import 'package:boitoi/utlils/colors.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class cButton2 extends StatelessWidget {
  final Function() onTap;
  final String text;
  final double? width;
  final double? height;
  final Color? bgcolor;
  final Color? txtcolor;
  final FontWeight? fontWeight;
  final double? textsize;
  final double? borderradius;

  const cButton2(
      {super.key,
      required this.onTap,
      required this.text,
      this.width,
      this.height,
      this.bgcolor,
      this.txtcolor,
      this.fontWeight,
      this.textsize,
      this.borderradius});

  @override
  Widget build(BuildContext context) {
    final width1 = MediaQuery.of(context).size.width;
    final height1 = MediaQuery.of(context).size.height;

    return InkWell(
      onTap: onTap ,
     
      splashColor: Colors.red,
  
      child: Container(
        decoration: BoxDecoration(
            // boxShadow: [
            //   BoxShadow(
            //       offset: const Offset(0, 3),
            //       blurRadius: 7,
            //       spreadRadius: 5,
            //       color: Colors.grey.withOpacity(0.5))
            // ],
            borderRadius: BorderRadius.circular(borderradius ?? 6),
            color: bgcolor ?? yellow),
        width: width ?? width1,
        height: height ?? height1 * 0.053,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: txtcolor ?? white,
                fontWeight: fontWeight ?? FontWeight.w400,
                fontSize: textsize ?? width1 * 0.038),
          ),
        ),
      ),
    );
  }
}
