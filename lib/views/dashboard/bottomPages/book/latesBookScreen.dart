import 'package:boitoi/utlils/colors.dart';
import 'package:boitoi/utlils/list.dart';
import 'package:flutter/material.dart';

class LatesBookScreen extends StatelessWidget {
  const LatesBookScreen({super.key});

  @override
  Widget build(BuildContext context) {
     final width = MediaQuery.of(context).size.width;
     final height = MediaQuery.of(context).size.height;
    
    
       return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverAppBar(
             // pinned: true,
              floating: true,
              backgroundColor: white,
              expandedHeight: height * 0.075,
              title: const Text(
                "Abc",
                style: TextStyle(color: red),
              ),
          
        
                   
            ),


            SliverList.builder(
              itemCount: 20,
              itemBuilder: (c,i){
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(height: 200,color: red,),
              );
            })
        
          ],
        ),
      ),
    );
 
 
 
  }
}