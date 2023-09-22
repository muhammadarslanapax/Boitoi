import 'package:boitoi/routes/routes_name.dart';
import 'package:boitoi/utlils/colors.dart';
import 'package:boitoi/widgets/cText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookScreen extends StatelessWidget {
  const BookScreen({super.key});
  

  @override
  Widget build(BuildContext context) {
     final width = MediaQuery.of(context).size.width;
     final height = MediaQuery.of(context).size.height;
    
    
   
   
    return SafeArea(
      child: Scaffold(
        body: NestedScrollView(
          physics:  const BouncingScrollPhysics(),
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return       [  SliverAppBar(
              // pinned: true,
              floating: true,
              backgroundColor: white,
              expandedHeight: height * 0.075,
              title: const Text(
                "Abc",
                style: TextStyle(color: black),
              ),
              actions: [
                InkWell(onTap: (){

                }, 
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, height * 0.02, width * 0.05, height * 0.02),
                  child: Container(
                    padding: const EdgeInsets.all(5),                    
                    decoration: BoxDecoration(
                      color: primarycolor,
                      borderRadius: BorderRadius.circular(6)
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.add,),
                        cText(
                          text: "abc",
                          color: white,
                          ),
                      ],
                    ),
                  ),
                ))],
            ),];
    
          },
          body:  Padding(
            padding: EdgeInsets.symmetric(horizontal: width*0.05,vertical: height*0.02),
            child: SizedBox(
              height: height,
              child: Column(
                children: [
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      cText(text: "Abc",width: width*0.045,fontWeight: FontWeight.bold,),
                      InkWell(
                        onTap: () {
                          Get.toNamed(Routes.newthisweek);
                        },
                        child: cText(text: "Abc",width: width*0.045,fontWeight: FontWeight.bold,color: grey,)),
                    ],
                  ),
            
            
                  Expanded(
                    child: GridView.builder(                    
                      itemCount: 10,
                      shrinkWrap: true,
                      gridDelegate: 
                     SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: height*0.20,
                      crossAxisCount: 2,
                      ), 
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: SizedBox(
                          height: height*0.17,
                          child: Row(
                            children: [
                              Container(
                                height: height*0.17,
                                width: width*0.2,
                                decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          image: const DecorationImage(image: AssetImage("images/natok.png"),fit: BoxFit.cover)
                                            ),
                                    ),
                              SizedBox(width: width*0.02,),
                              SizedBox(
                                height: height*0.17,
                                width: width*0.2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    cText(text: "Abcdefghijk", width: width*0.045,
                                    fontWeight: FontWeight.w500,
                                    maxlines: 2,
                                    ),
                                    cText(text: "Abcdefghijklmn", width: width*0.036,
                                        maxlines: 2,
                                      ),
                                    cText(text: "Abcdefghijklmno", width: width*0.04,fontWeight: FontWeight.w500,
                                        maxlines: 1,
                                      ),
                                    cText(text: "Abc", width: width*0.036,color: red,
                                        maxlines: 2,
                                      ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },),
                  )
    
    
    
                ],
              ),
            ),
          ),
     
     
          
        ),
      ),
    );
 
 
  }
}