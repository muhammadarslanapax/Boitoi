import 'package:boitoi/routes/routes.dart';
import 'package:boitoi/routes/routes_name.dart';
import 'package:boitoi/views/splashScreen.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

Future<void> main() async {
  //  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(); // Initialize Firebase
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        iconTheme: const IconThemeData(
          color: Colors.black, // Replace with your desired icon color
        ),

        // ignore: prefer_const_constructors
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: Colors.black, // Replace with your desired cursor color
        ),

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
     // home: SlashScreen(),
     initialRoute: Routes.splash,
      
     // initialRoute: Routes.splash,
      getPages: AppRoutes.routes, // Use the routes defined in AppRoutes
    );
  
  }
}
