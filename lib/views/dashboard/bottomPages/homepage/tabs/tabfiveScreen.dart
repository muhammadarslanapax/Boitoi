import 'package:boitoi/utlils/colors.dart';
import 'package:boitoi/widgets/cText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class TabFiveScreen extends StatelessWidget {
  const TabFiveScreen({super.key});

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
                crossAxisSpacing: 12, mainAxisExtent: height * 0.33, mainAxisSpacing: 10, crossAxisCount: 3),
            itemBuilder: (c, i) {
              return InkWell(
                onTap: () {},
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: const DecorationImage(
                              image: AssetImage(
                                "images/natok.png",
                              ),
                              fit: BoxFit.cover)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: width * 0.085,
                                height: height * 0.035,
                                decoration: const BoxDecoration(
                                    color: red,
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(8),
                                    )),
                                child: Center(
                                  child: cText(
                                    text: "ABC",
                                    color: white,
                                    width: width * 0.0275,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 4),
                                child: cText(
                                  text: "Abc",
                                  color: white,
                                  width: width * 0.03,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.005,
                    ),
                    RatingBar.builder(
                      ignoreGestures: true,
                      tapOnlyMode: true,
                      itemSize: 15,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 0.0),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                    SizedBox(
                      height: height * 0.005,
                    ),
                    const cText(text: "ABC"),
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
