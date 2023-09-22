import 'package:boitoi/utlils/colors.dart';
import 'package:boitoi/widgets/cText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class TabSixScreen extends StatelessWidget {
  const TabSixScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            itemCount: 20,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 12, mainAxisExtent: height * 0.215, mainAxisSpacing: 10, crossAxisCount: 3),
            itemBuilder: (c, i) {
              return InkWell(
                onTap: () {},
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        height: 100,
                        child: Image.asset(
                          "images/profilecom.png",
                        )),
                    SizedBox(
                      height: height * 0.005,
                    ),
                    cText(
                      text: "ABC",
                      width: width * 0.0385,
                      color: black,
                    ),
                    SizedBox(
                      height: height * 0.005,
                    ),
                    cText(
                      text: "ABC",
                      width: width * 0.035,
                      color: grey,
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
