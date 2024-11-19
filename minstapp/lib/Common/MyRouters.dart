// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:minstapp/pages/SplashScreen.dart';
import 'package:minstapp/pages/login/authApp.dart';
import 'package:minstapp/pages/login/loginApp.dart';
import 'package:minstapp/pages/menu/menu.dart';
import 'package:minstapp/pages/notificaciones/Notificaciones.dart';

// ignore: constant_identifier_names
const String ROUTE_PREVIEW = '/preview';
// ignore: constant_identifier_names
const String ROUTE_LOGIN = '/login';
// ignore: constant_identifier_names
const String ROUTE_AUTH = '/auth';
// ignore: constant_identifier_names
const String ROUTE_MENU = '/menu';

// ignore: constant_identifier_names
const String ROUTE_NOTIFICACIONES = '/notificaciones';

class MyRouters {
  static Route<dynamic>generateRoute(RouteSettings settings){
    switch(settings.name){
      case ROUTE_PREVIEW:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case ROUTE_LOGIN:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case ROUTE_NOTIFICACIONES:
        return MaterialPageRoute(builder: (_) => const NotificacionesPage());
      case ROUTE_AUTH:
        return MaterialPageRoute(builder: (_) => const AuthPage());
      case ROUTE_MENU:
        return MaterialPageRoute(builder: (_) => MenuPage());
      default:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
    }
  }
}