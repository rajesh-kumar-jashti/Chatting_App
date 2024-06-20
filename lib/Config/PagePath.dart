import 'package:chatty/Pages/Auth/AuthPage.dart';
import 'package:chatty/Pages/HomPage/HomePage.dart';
import 'package:get/get.dart';

var pagePath = [
  GetPage(
    name: "/authPage", 
    page: () => AuthPage(),
    transition: Transition.rightToLeft,
  ),
  GetPage(
    name: "/homePage", 
    page: () => HomePage(),
    transition: Transition.rightToLeft,
  )
];