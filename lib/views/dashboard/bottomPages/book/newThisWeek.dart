import 'package:boitoi/utlils/colors.dart';
import 'package:boitoi/widgets/cText.dart';
import 'package:flutter/material.dart';

class NewThisWeek extends StatelessWidget {
  const NewThisWeek({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: cText(
            text: "এ সপ্তাহের নতুন",
            color: grey,
            width: width * 0.05,
            fontWeight: FontWeight.bold,
          ),
          centerTitle: true,
          backgroundColor: white,
          elevation: 0,
          iconTheme: const IconThemeData(color: grey),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          child: SizedBox(
            height: height,
            width: width,
            child: GridView.builder(
              itemCount: 40,
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisExtent: height * 0.35,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15),
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: height * 0.22,
                          width: width * 0.28,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              image: const DecorationImage(
                                  image: AssetImage("images/natok.png"),
                                  fit: BoxFit.cover)),
                        ),
                        Positioned(
                          right: 5,
                          top: 5,
                          child: Container(
                            width: 12,
                            height: 20,
                            decoration: BoxDecoration(
                                color: black.withOpacity(0.8),
                                borderRadius: BorderRadius.circular(4),
                                image: const DecorationImage(
                                    image:
                                        AssetImage("images/electric_bolt.png"),
                                    fit: BoxFit.cover)),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.star,
                          size: width * 0.045,
                          color: grey.withOpacity(0.5),
                        ),
                        Icon(
                          Icons.star,
                          size: width * 0.045,
                          color: grey.withOpacity(0.5),
                        ),
                        Icon(
                          Icons.star,
                          size: width * 0.045,
                          color: grey.withOpacity(0.5),
                        ),
                        Icon(
                          Icons.star,
                          size: width * 0.045,
                          color: grey.withOpacity(0.5),
                        ),
                        Icon(
                          Icons.star,
                          size: width * 0.045,
                          color: grey.withOpacity(0.5),
                        ),
                      ],
                    ),
                    cText(
                      text: "Abcdefghijksdgfsdgsd",
                      width: width * 0.042,
                      fontWeight: FontWeight.w500,
                      maxlines: 2,
                    ),
                    cText(
                      text: "Abcdefghijklmnfsdfsdf",
                      width: width * 0.036,
                      maxlines: 2,
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
