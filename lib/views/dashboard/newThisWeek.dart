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
          title: cText(text: "এ সপ্তাহের নতুন",color: grey,width: width*0.05,fontWeight: FontWeight.bold,),
          centerTitle: true,
          backgroundColor: white,
          elevation: 0,
          iconTheme: IconThemeData(
            color: grey
          ),
        ),
        body: SizedBox(
          height: height,
          width: width,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Expanded(
              
              child: GridView.builder(
                itemCount: 2,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: height * 0.20,
                  crossAxisCount: 3,

                ),
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: height * 0.2,
                        width: width * 0.24,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            image: const DecorationImage(image: AssetImage("images/natok.png"), fit: BoxFit.cover)),
                      ),
                      Row(
                        children: [
                          Icon(Icons.star,size: width*0.045,color: grey.withOpacity(0.5),
                          ),
                          Icon(Icons.star,size: width*0.045,color: grey.withOpacity(0.5),
                          ),
                          Icon(Icons.star,size: width*0.045,color: grey.withOpacity(0.5),
                          ),
                          Icon(Icons.star,size: width*0.045,color: grey.withOpacity(0.5),
                          ),
                          Icon(Icons.star,size: width*0.045,color: grey.withOpacity(0.5),
                          ),
                        ],
                      ),
                      cText(
                        text: "Abcdefghijk",
                        width: width * 0.045,
                        fontWeight: FontWeight.w500,
                        maxlines: 2,
                      ),
                      cText(
                        text: "Abcdefghijklmn",
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
      ),
    );
  }
}