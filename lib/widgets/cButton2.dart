import 'package:boitoi/utlils/colors.dart';
import 'package:boitoi/widgets/cText.dart';
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
  final String? image;

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
      this.borderradius,
      this.image});

  @override
  Widget build(BuildContext context) {
    final width1 = MediaQuery.of(context).size.width;
    final height1 = MediaQuery.of(context).size.height;

    return InkWell(
      onTap: onTap,
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
            borderRadius: BorderRadius.circular(borderradius ?? 8),
            color: bgcolor ?? yellow),
        width: width ?? width1,
        height: height ?? height1 * 0.06,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            image != null
                ? Container(
                    width: width1 * 0.055,
                    decoration: BoxDecoration(
                      image:
                          DecorationImage(image: AssetImage(image.toString())),
                    ),
                  )
                : const cText(text: ""),
            SizedBox(
              width: width1 * 0.02,
            ),
            Text(
              text,
              style: TextStyle(
                  color: txtcolor ?? white,
                  fontWeight: fontWeight ?? FontWeight.w600,
                  fontSize: textsize ?? width1 * 0.038),
            ),
          ],
        ),
      ),
    );
  }
}
