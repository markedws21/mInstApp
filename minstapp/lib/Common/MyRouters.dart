// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:minstapp/pages/SplashScreen.dart';
import 'package:minstapp/pages/login/loginApp.dart';
import 'package:minstapp/pages/menu/menu.dart';

// ignore: constant_identifier_names
const String ROUTE_PREVIEW = '/preview';
// ignore: constant_identifier_names
const String ROUTE_LOGIN = '/login';
// ignore: constant_identifier_names
const String ROUTE_MENU = '/menu';

class MyRouters {
  static Route<dynamic>generateRoute(RouteSettings settings){
    switch(settings.name){
      case "/preview":
        return MaterialPageRoute(builder: (_)=>const SplashScreen());
      case "/login":
        return MaterialPageRoute(builder: (_)=>const LoginPage());
      case "/menu":
        return MaterialPageRoute(builder: (_)=> MenuPage());
      default:
        return MaterialPageRoute(builder: (_)=>const SplashScreen());
    }
  }
}