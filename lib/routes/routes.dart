import 'package:boitoi/routes/routes_name.dart';
import 'package:boitoi/views/dashboard/DashbordScreen.dart';
import 'package:boitoi/views/dashboard/bottomPages/book/newThisWeek.dart';
import 'package:boitoi/views/splashScreen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import '../views/dashboard/login.dart';


class AppRoutes {
  static final List<GetPage> routes = [
    GetPage(
      name: Routes.dashboard,
      page: () =>  DashboardScreen(),
      transition: Transition.leftToRight, 
      
    ),


     GetPage(
      name: Routes.splash,
      page: () => const SlashScreen(),
            transition: Transition.leftToRight, 

    ),
     GetPage(
      name: Routes.newthisweek,
      page: () => const NewThisWeek(),
            transition: Transition.leftToRight, 

    ),
    GetPage(
      name: Routes.login,
      page: () => const LoginScreen(),
      transition: Transition.leftToRight,
    ),






  ];
}
