import 'package:boitoi/controller/homeController.dart';
import 'package:boitoi/utlils/colors.dart';
import 'package:boitoi/utlils/list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  void initState() {
    Get.put(HomeController());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (obj) {
        return Scaffold(
          backgroundColor: white,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: HomeController.to.cindex,
            onTap: (val) {
              HomeController.to.changeindex(val);
              HomeController.to.update();
            },
            showSelectedLabels: true,
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
            selectedLabelStyle: const TextStyle(color: primarycolor),
              selectedItemColor: primarycolor, // Change this to the color you want for selected icons

                 unselectedIconTheme:  IconThemeData(color: grey.withOpacity(0.5)),
            unselectedLabelStyle:  TextStyle(color: grey.withOpacity(0.5)),
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "শুরু"),
              BottomNavigationBarItem(icon: Icon(Icons.trending_up_outlined), label: "বেস্ট সেলার"),
              BottomNavigationBarItem(icon: Icon(Icons.my_library_books_outlined), label: "স্বল্পগল্প"),
              BottomNavigationBarItem(icon: Icon(Icons.view_agenda_outlined), label: "শেল্ফ"),
              BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: "প্রোফাইল"),
            ],
          ),
          body:  pages[obj.cindex]
          
        );
      }
    );
  }
}
