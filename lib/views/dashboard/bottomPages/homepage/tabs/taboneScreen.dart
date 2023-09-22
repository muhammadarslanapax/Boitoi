import 'package:boitoi/controller/taboneController.dart';
import 'package:boitoi/utlils/colors.dart';
import 'package:boitoi/widgets/cText.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class TabOneScreen extends StatefulWidget {
  const TabOneScreen({super.key});

  @override
  State<TabOneScreen> createState() => _TabOneScreenState();
}

class _TabOneScreenState extends State<TabOneScreen> {
  List imageUrls = ["images/book.png", "images/book0.png"];

  @override
  void initState() {
    Get.put(TaboneController());
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: GetBuilder<TaboneController>(builder: (obj) {
        return SingleChildScrollView(
          child: Container(
            width: width,
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: CarouselSlider(
                  items: imageUrls.map((url) {
                    return Container(
                        width: width,
                        height: height * 0.2,
                        child: ClipRRect(borderRadius: BorderRadius.circular(8), child: Image.asset(url, fit: BoxFit.cover)));
                  }).toList(),
                  options: CarouselOptions(
                    height: height * 0.2,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    viewportFraction: 1.0,
                    aspectRatio: 16 / 3,
                    onPageChanged: (index, reason) {
                      obj.changeindex(index);
                      obj.update();
                    },
                  ),
                ),
              ),

              SizedBox(height: height * 0.008), // Add spacing between carousel and indicators
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imageUrls.asMap().entries.map((entry) {
                  int index = entry.key;
                  return Container(
                    width: index == obj.currentImageIndex ? 8 : 10,
                    height: index == obj.currentImageIndex ? 8 : 10,
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.withOpacity(0.5),
                    ),
                  );
                }).toList(),
              ),
              SizedBox(
                height: height * 0.02,
              ),

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 14),
                child: cText(text: "TTT"),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                width: width,
                height: height * 0.25,
                color: primarycolor.withOpacity(0.3),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          width: width * 0.3,
                          height: height,
                          child: Image.asset(
                            "images/natok.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: width * 0.03,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            cText(
                              text: "Abx",
                              fontWeight: bold,
                              width: width * 0.04,
                            ),
                            const cText(
                              text: "Abx",
                            ),
                            RatingBar.builder(
                              ignoreGestures: true,
                              tapOnlyMode: true,
                              itemSize: 18,
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
                          
                          
                          
                            const Spacer(),
                            cText(
                              text: "(\$0.99)",
                              width: width * 0.04,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: height * 0.03,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    cText(
                      text: "Abc",
                      width: width * 0.045,
                      fontWeight: FontWeight.bold,
                    ),
                    InkWell(
                        onTap: () {
                          // Get.toNamed(Routes.newthisweek);
                        },
                        child: cText(
                          text: "Abc",
                          width: width * 0.045,
                          fontWeight: FontWeight.bold,
                          color: grey,
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: height * 0.20,
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SizedBox(
                        height: height * 0.17,
                        child: Row(
                          children: [
                            Container(
                              height: height * 0.17,
                              width: width * 0.2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  image: const DecorationImage(image: AssetImage("images/natok.png"), fit: BoxFit.cover)),
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            SizedBox(
                              height: height * 0.17,
                              width: width * 0.2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  cText(
                                    text: "Abcdefghijk",
                                    width: width * 0.04,
                                    fontWeight: FontWeight.w500,
                                    maxlines: 2,
                                  ),
                                  cText(
                                    text: "Abcdefghijklmn",
                                    width: width * 0.036,
                                    maxlines: 2,
                                  ),
                                  RatingBar.builder(
                                    ignoreGestures: true,
                                    tapOnlyMode: true,
                                    itemSize: width * 0.03,
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
                                  cText(
                                    text: "Abc",
                                    width: width * 0.036,
                                    color: black,
                                    fontWeight: bold,
                                    maxlines: 2,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    cText(
                      text: "Abc",
                      width: width * 0.045,
                      fontWeight: FontWeight.bold,
                    ),
                    InkWell(
                        onTap: () {
                          // Get.toNamed(Routes.newthisweek);
                        },
                        child: cText(
                          text: "Abc",
                          width: width * 0.045,
                          fontWeight: FontWeight.bold,
                          color: grey,
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: height * 0.20,
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SizedBox(
                        height: height * 0.17,
                        child: Row(
                          children: [
                            Container(
                              height: height * 0.17,
                              width: width * 0.2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  image: const DecorationImage(image: AssetImage("images/natok.png"), fit: BoxFit.cover)),
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            SizedBox(
                              height: height * 0.17,
                              width: width * 0.2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  cText(
                                    text: "Abcdefghijk",
                                    width: width * 0.04,
                                    fontWeight: FontWeight.w500,
                                    maxlines: 2,
                                  ),
                                  cText(
                                    text: "Abcdefghijklmn",
                                    width: width * 0.036,
                                    maxlines: 2,
                                  ),
                                  cText(
                                    text: "\$",
                                    width: width * 0.036,
                                    color: black,
                                    fontWeight: bold,
                                    maxlines: 2,
                                  ),
                                  cText(
                                    text: "Abc",
                                    width: width * 0.036,
                                    color: red,
                                    fontWeight: bold,
                                    maxlines: 2,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    cText(
                      text: "Abc",
                      width: width * 0.045,
                      fontWeight: FontWeight.bold,
                    ),
                    InkWell(
                        onTap: () {
                          // Get.toNamed(Routes.newthisweek);
                        },
                        child: cText(
                          text: "Abc",
                          width: width * 0.045,
                          fontWeight: FontWeight.bold,
                          color: grey,
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: height * 0.20,
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SizedBox(
                        height: height * 0.17,
                        child: Row(
                          children: [
                            Container(
                              height: height * 0.17,
                              width: width * 0.2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  image: const DecorationImage(image: AssetImage("images/natok.png"), fit: BoxFit.cover)),
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            SizedBox(
                              height: height * 0.17,
                              width: width * 0.2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  cText(
                                    text: "Abcdefghijk",
                                    width: width * 0.04,
                                    fontWeight: FontWeight.w500,
                                    maxlines: 2,
                                  ),
                                  cText(
                                    text: "Abcdefghijklmn",
                                    width: width * 0.036,
                                    maxlines: 2,
                                  ),
                                  RatingBar.builder(
                                    ignoreGestures: true,
                                    tapOnlyMode: true,
                                    itemSize: width * 0.03,
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
                                  cText(
                                    text: "Abc",
                                    width: width * 0.036,
                                    color: black,
                                    fontWeight: bold,
                                    maxlines: 2,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    cText(
                      text: "Abc",
                      width: width * 0.045,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: height * 0.20,
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SizedBox(
                        height: height * 0.17,
                        child: Row(
                          children: [
                            Container(
                              height: height * 0.17,
                              width: width * 0.2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  image: const DecorationImage(image: AssetImage("images/natok.png"), fit: BoxFit.cover)),
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            SizedBox(
                              height: height * 0.17,
                              width: width * 0.2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  cText(
                                    text: "Abcdefghijk",
                                    width: width * 0.04,
                                    fontWeight: FontWeight.w500,
                                    maxlines: 2,
                                  ),
                                  cText(
                                    text: "Abcdefghijklmn",
                                    width: width * 0.036,
                                    maxlines: 2,
                                  ),
                                  RatingBar.builder(
                                    ignoreGestures: true,
                                    tapOnlyMode: true,
                                    itemSize: width * 0.03,
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
                                  cText(
                                    text: "Abc",
                                    width: width * 0.036,
                                    color: black,
                                    fontWeight: bold,
                                    maxlines: 2,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    cText(
                      text: "Abc",
                      width: width * 0.045,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ),

              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  child: Container(
                    width: width,
                    height: height * 0.17,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (c, i) {
                          return Container(
                            child: Column(
                              children: [
                                Container(
                                    width: width * 0.3,
                                    height: width * 0.23,
                                    child: Image.asset(
                                      "images/profilecom.png",
                                      // fit: BoxFit.cover,
                                    )),
                                cText(
                                  text: "Abcdd",
                                  width: width * 0.04,
                                )
                              ],
                            ),
                          );
                        }),
                  )),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    cText(
                      text: "Abc",
                      width: width * 0.045,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: height * 0.20,
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SizedBox(
                        height: height * 0.17,
                        child: Row(
                          children: [
                            Container(
                              height: height * 0.17,
                              width: width * 0.2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  image: const DecorationImage(image: AssetImage("images/natok.png"), fit: BoxFit.cover)),
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            SizedBox(
                              height: height * 0.17,
                              width: width * 0.2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  cText(
                                    text: "Abcdefghijk",
                                    width: width * 0.04,
                                    fontWeight: FontWeight.w500,
                                    maxlines: 2,
                                  ),
                                  cText(
                                    text: "Abcdefghijklmn",
                                    width: width * 0.036,
                                    maxlines: 2,
                                  ),
                                  RatingBar.builder(
                                    ignoreGestures: true,
                                    tapOnlyMode: true,
                                    itemSize: width * 0.03,
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
                                  cText(
                                    text: "Abc",
                                    width: width * 0.036,
                                    color: black,
                                    fontWeight: bold,
                                    maxlines: 2,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    cText(
                      text: "Abc",
                      width: width * 0.045,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: height * 0.20,
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SizedBox(
                        height: height * 0.17,
                        child: Row(
                          children: [
                            Container(
                              height: height * 0.17,
                              width: width * 0.2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  image: const DecorationImage(image: AssetImage("images/natok.png"), fit: BoxFit.cover)),
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            SizedBox(
                              height: height * 0.17,
                              width: width * 0.2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  cText(
                                    text: "Abcdefghijk",
                                    width: width * 0.04,
                                    fontWeight: FontWeight.w500,
                                    maxlines: 2,
                                  ),
                                  cText(
                                    text: "Abcdefghijklmn",
                                    width: width * 0.036,
                                    maxlines: 2,
                                  ),
                                  RatingBar.builder(
                                    ignoreGestures: true,
                                    tapOnlyMode: true,
                                    itemSize: width * 0.03,
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
                                  cText(
                                    text: "Abc",
                                    width: width * 0.036,
                                    color: black,
                                    fontWeight: bold,
                                    maxlines: 2,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    cText(
                      text: "Abc",
                      width: width * 0.045,
                      fontWeight: FontWeight.bold,
                    ),
                    cText(
                      text: "Abc",
                      width: width * 0.045,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: height * 0.20,
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SizedBox(
                        height: height * 0.17,
                        child: Row(
                          children: [
                            Container(
                              height: height * 0.17,
                              width: width * 0.2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  image: const DecorationImage(image: AssetImage("images/natok.png"), fit: BoxFit.cover)),
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            SizedBox(
                              height: height * 0.17,
                              width: width * 0.2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  cText(
                                    text: "Abcdefghijk",
                                    width: width * 0.04,
                                    fontWeight: FontWeight.w500,
                                    maxlines: 2,
                                  ),
                                  cText(
                                    text: "Abcdefghijklmn",
                                    width: width * 0.036,
                                    maxlines: 2,
                                  ),
                                  RatingBar.builder(
                                    ignoreGestures: true,
                                    tapOnlyMode: true,
                                    itemSize: width * 0.03,
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
                                  cText(
                                    text: "Abc",
                                    width: width * 0.036,
                                    color: black,
                                    fontWeight: bold,
                                    maxlines: 2,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    cText(
                      text: "Abc",
                      width: width * 0.045,
                      fontWeight: FontWeight.bold,
                    ),
                    cText(
                      text: "Abc",
                      width: width * 0.045,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: height * 0.20,
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SizedBox(
                        height: height * 0.17,
                        child: Row(
                          children: [
                            Container(
                              height: height * 0.17,
                              width: width * 0.2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  image: const DecorationImage(image: AssetImage("images/natok.png"), fit: BoxFit.cover)),
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            SizedBox(
                              height: height * 0.17,
                              width: width * 0.2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  cText(
                                    text: "Abcdefghijk",
                                    width: width * 0.04,
                                    fontWeight: FontWeight.w500,
                                    maxlines: 2,
                                  ),
                                  cText(
                                    text: "Abcdefghijklmn",
                                    width: width * 0.036,
                                    maxlines: 2,
                                  ),
                                  RatingBar.builder(
                                    ignoreGestures: true,
                                    tapOnlyMode: true,
                                    itemSize: width * 0.03,
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
                                  cText(
                                    text: "Abc",
                                    width: width * 0.036,
                                    color: black,
                                    fontWeight: bold,
                                    maxlines: 2,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    cText(
                      text: "Abc",
                      width: width * 0.045,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: height * 0.20,
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SizedBox(
                        height: height * 0.17,
                        child: Row(
                          children: [
                            Container(
                              height: height * 0.17,
                              width: width * 0.2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  image: const DecorationImage(image: AssetImage("images/natok.png"), fit: BoxFit.cover)),
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            SizedBox(
                              height: height * 0.17,
                              width: width * 0.2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  cText(
                                    text: "Abcdefghijk",
                                    width: width * 0.04,
                                    fontWeight: FontWeight.w500,
                                    maxlines: 2,
                                  ),
                                  cText(
                                    text: "Abcdefghijklmn",
                                    width: width * 0.036,
                                    maxlines: 2,
                                  ),
                                  RatingBar.builder(
                                    ignoreGestures: true,
                                    tapOnlyMode: true,
                                    itemSize: width * 0.03,
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
                                  cText(
                                    text: "Abc",
                                    width: width * 0.036,
                                    color: black,
                                    fontWeight: bold,
                                    maxlines: 2,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    cText(
                      text: "Abc",
                      width: width * 0.045,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Container(
                  width: width,
                  height: height * 0.37,
                  decoration: BoxDecoration(color: primarycolor, borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                            alignment: Alignment.topRight,
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.more_horiz,
                                  color: white,
                                  size: 20,
                                ))),
                        Container(
                          child: const Center(
                            child: cText(
                              text: "0/so\n dfdf",
                              color: white,
                            ),
                          ),
                          width: width * 0.28,
                          height: width * 0.28,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: primarycolor, border: Border.all(width: 7, color: primarycolor1)),
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.circle_outlined,
                              color: white,
                              size: 15,
                            ),
                            Icon(
                              Icons.circle_outlined,
                              color: white,
                              size: 15,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            cText(
                              text: "abc",
                              color: white,
                              width: width * 0.05,
                            ),
                            cText(
                              text: "abc",
                              color: white,
                              width: width * 0.05,
                            ),
                          ],
                        ),
                        const Divider(
                          color: white,
                          thickness: 2,
                        ),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: cText(
                              text: "ABC",
                              color: white,
                              width: width * 0.05,
                            ))
                      ],
                    ),
                  ),
                ),
              )
            ]),
          ),
        );
      }),
    );
  }
}
