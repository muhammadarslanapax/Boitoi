import 'package:boitoi/utlils/colors.dart';
import 'package:boitoi/widgets/cText.dart';
import 'package:flutter/material.dart';

class TabThreeScreen extends StatelessWidget {
  const TabThreeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: width,
        height: height,
        child: ListView.separated(
            itemBuilder: (c, i) {
              return InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: SizedBox(
                    width: width,
                    height: height * 0.1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: width * 0.16,
                          height: height * 0.085,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: blue),
                          child: Center(
                            child: Image.asset(
                              "images/horror.png",
                              width: 40,
                              height: 40,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: width * 0.03,
                        ),
                        cText(
                          text: "ABC",
                          color: black,
                          width: width * 0.04,
                          fontWeight: bold,
                        ),
                        const Spacer(),
                        cText(
                          text: "abc",
                          color: grey,
                          width: width * 0.0375,
                        ),
                        SizedBox(
                          width: width * 0.03,
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                          color: black,
                          size: 15,
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
            separatorBuilder: (c, i) {
              return const Divider();
            },
            itemCount: 20),
      ),
    );
  }
}
