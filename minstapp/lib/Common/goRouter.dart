// ignore_for_file: file_names
import 'package:go_router/go_router.dart';
import 'package:minstapp/pages/SplashScreen.dart';
import 'package:minstapp/pages/calendario/calendarPage.dart';
import 'package:minstapp/pages/carnet/cardPhoto.dart';
import 'package:minstapp/pages/horario/horario_page.dart';
import 'package:minstapp/pages/login/authApp.dart';
import 'package:minstapp/pages/login/login_app.dart';
import 'package:minstapp/pages/menu/menu.dart';
import 'package:minstapp/pages/notas/notasPage.dart';
import 'package:minstapp/pages/notificaciones/notificaciones.dart';

final GoRouter router = GoRouter(
  initialLocation: '/login',
  routes: <RouteBase>[
    GoRoute(
      name: '/preview',
      path: '/preview',
      builder: (context,state) {
        return const SplashScreen();
      }
    ),
    GoRoute(
      name: '/login',
      path: '/login',
      builder: (context,state) {
        return const LoginPage();
      }
    ),
    GoRoute(
      name: '/menu',
      path: '/menu',
      builder: (context,state) {
        return  MenuPage();
      }
    ),
    GoRoute(
      name: '/auth',
      path: '/auth',
      builder: (context,state) {
        return  AuthPage();
      }
    ),
    GoRoute(
      name: '/card',
      path: '/card',
      builder: (context,state) {
        return  CardPhotoPage();
      }
    ),
    GoRoute(
      name: '/horario',
      path: '/horario',
      builder: (context,state) {
        return  HorarioPage();
      }
    ),
    GoRoute(
      name: '/notas',
      path: '/notas',
      builder: (context,state) {
        return  Notaspage();
      }
    ),
    GoRoute(
      name: '/calendario',
      path: '/calendario',
      builder: (context,state) {
        return  CalendarPage();
      }
    ),
    GoRoute(
      name: '/notificaciones',
      path: '/notificaciones',
      builder: (context,state) {
        return  NotificacionesPage();
      }
    ),
    GoRoute(
      name: '/correo',
      path: '/correo',
      builder: (context,state) {
        return  Notaspage();
      }
    ),
  ]
);