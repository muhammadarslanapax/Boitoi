import 'package:boitoi/utlils/colors.dart';
import 'package:boitoi/utlils/list.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: DefaultTabController(
        length: 7,
        child: Scaffold(
          body: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverAppBar(
                pinned: true,
                floating: true,
                backgroundColor: white,
                expandedHeight: height * 0.15,


                title:Image.asset("images/logo.PNG"),
                // flexibleSpace: FlexibleSpaceBar(
                //   title: Image.asset("images/logo.PNG"),
                // ),

                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search_outlined),
                    color: grey.withOpacity(0.5),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.qr_code_scanner_sharp),
                    color: grey.withOpacity(0.5),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.shopping_cart_outlined),
                    color: grey.withOpacity(0.5),
                  ),
                ],
                bottom: TabBar(
                    labelColor: primarycolor, // Change selected label color
                    unselectedLabelColor: Colors.grey, // Change unselected label color
                    indicator: const BoxDecoration(), // Hide the indicator (divider)

                    isScrollable: true,
                    onTap: (val) {},
                    tabs: tabs),
              ),
              SliverFillRemaining(
                child: TabBarView(children: tabviews),
              )
            ],
          ),
        ),
      ),
    );
 
 
 
  }
}
