import 'package:boitoi/utlils/colors.dart';
import 'package:flutter/material.dart';

class SellBookScreen extends StatelessWidget {
  const SellBookScreen({super.key});

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
          //    pinned: true,
              floating: true,
              backgroundColor: white,
              expandedHeight: height * 0.1,
              title: const Text(
                "Abc",
                style: TextStyle(color: red),
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search_outlined),
                  color: grey,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.qr_code_scanner_sharp),
                  color: grey,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.shopping_cart_outlined),
                  color: grey,
                ),
              ],
           
       
       
        ),

           SliverList.builder(
                itemCount: 20,
                itemBuilder: (c, i) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 200,
                      color: red,
                    ),
                  );
                })
     
     
        
        
        ],
        ),
      ),
    );
 
 
 
  }
}