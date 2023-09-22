
import 'package:boitoi/views/dashboard/bottomPages/book/bookScreen.dart';
import 'package:boitoi/views/dashboard/bottomPages/homepage/homeScreen.dart';
import 'package:boitoi/views/dashboard/bottomPages/book/latesBookScreen.dart';
import 'package:boitoi/views/dashboard/bottomPages/profileScreen.dart';
import 'package:boitoi/views/dashboard/bottomPages/sellBook.dart';
import 'package:boitoi/views/dashboard/bottomPages/homepage/tabs/tabfiveScreen.dart';
import 'package:boitoi/views/dashboard/bottomPages/homepage/tabs/tabfoutScreen.dart';
import 'package:boitoi/views/dashboard/bottomPages/homepage/tabs/taboneScreen.dart';
import 'package:boitoi/views/dashboard/bottomPages/homepage/tabs/tabsevenScreen.dart';
import 'package:boitoi/views/dashboard/bottomPages/homepage/tabs/tabsixScreen.dart';
import 'package:boitoi/views/dashboard/bottomPages/homepage/tabs/tabthreeScreen.dart';
import 'package:boitoi/views/dashboard/bottomPages/homepage/tabs/tabtwoScreen.dart';
import 'package:boitoi/widgets/cText.dart';
import 'package:flutter/material.dart';

List<Widget> pages = [const HomeScreen(),const LatesBookScreen(),const BookScreen(),const SellBookScreen(),const ProfileScreen()];

List<Widget> tabviews = [
TabOneScreen(),
TabTwoScreen(),
TabThreeScreen(),
TabFoutScreen(),
TabFiveScreen(),
TabSixScreen(),
TabSevenScreen(),
  ];


  List<Widget> tabs = [
  Tab(text: 'শুরু'),
  Tab(text: 'জনপ্রিয় বই'),
  Tab(text: 'ক্যাটাগরি'),
  Tab(text: 'সেরা ফ্রি বই'),
  Tab(text: 'সেরা কেনা বই'),
  Tab(text: 'লেখক'),
  Tab(text: 'প্ৰকাশক'),
];