import 'package:chatty/Pages/Auth/AuthPage.dart';
import 'package:chatty/Pages/Chat/ChatPage.dart';
import 'package:chatty/Pages/HomPage/HomePage.dart';
import 'package:chatty/Pages/Profile/ProfilePage.dart';
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
  ),
  GetPage(
    name: "/chatPage", 
    page: () => ChatPage(),
    transition: Transition.rightToLeft,
  ),
  GetPage(
    name: "/profilePage", 
    page: () => ProfilePage(),
    transition: Transition.rightToLeft,
  )
];