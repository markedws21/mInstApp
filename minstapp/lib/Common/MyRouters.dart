// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:minstapp/pages/login/loginApp.dart';

// ignore: constant_identifier_names
const String ROUTE_LOGIN = '/login';

class MyRouters {
  static Route<dynamic>generateRoute(RouteSettings settings){
    switch(settings.name){
      case "/login":
        return MaterialPageRoute(builder: (_)=>const LoginPage());
      default:
        return MaterialPageRoute(builder: (_)=>const LoginPage());
    }
  }
}