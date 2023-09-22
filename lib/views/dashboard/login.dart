import 'package:boitoi/utlils/colors.dart';
import 'package:boitoi/widgets/cButton2.dart';
import 'package:boitoi/widgets/cText.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: white,
        body: SizedBox(
          height: height,
          width: width,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: width * 0.05, vertical: height * 0.02),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: height * 0.45,
                  width: width,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/girl_bench.png"))),
                ),
                cText(
                  text:
                      "সাহিত্য  ও  মুগ্ধতার  এক  বৈচিত্র্যপূর্ণ \nজগৎ রয়েছে আপনার অপেক্ষায়... ",
                  width: width * 0.057,
                  textAlign: TextAlign.center,
                  fontWeight: FontWeight.w500,
                  maxlines: 2,
                ),
                cText(
                  text:
                      "আপনার আগ্রহের উপর ভিত্তি করে বইয়ের পরামর্শ পেতে \nলগ ইন করুন, আপনার সদস্যতা পরিচালনা করুন এবং \nআরো অনেক কিছু... ",
                  width: width * 0.04,
                  textAlign: TextAlign.center,
                  maxlines: 3,
                ),
                cButton2(
                  onTap: () {},
                  text: "Google দিয়ে লগইন করুন",
                  image: "images/google_logo.png",
                  bgcolor: googleRed,
                ),
                cButton2(
                  onTap: () {},
                  text: "Facebook দিয়ে লগইন করুন",
                  image: "images/fb_logo.png",
                  bgcolor: fbBlue,
                ),
                cText(
                  text: "ফোন দিয়ে লগ ইন করুন",
                  width: width * 0.057,
                  fontWeight: FontWeight.w500,
                ),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: "আপনি ",
                      style: TextStyle(color: black, fontSize: width * 0.035)),
                  TextSpan(
                      text: "শর্তাবলী ",
                      style: TextStyle(
                          color: blue,
                          fontSize: width * 0.035,
                          decoration: TextDecoration.underline)),
                  TextSpan(
                      text: "এবং ",
                      style: TextStyle(color: black, fontSize: width * 0.035)),
                  TextSpan(
                      text: "গোপনীয়তা নীতি ",
                      style: TextStyle(
                          color: blue,
                          fontSize: width * 0.035,
                          decoration: TextDecoration.underline)),
                  TextSpan(
                      text: "মেনে নিয়ে শুরু করছেন ",
                      style: TextStyle(color: black, fontSize: width * 0.035)),
                ]))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
