// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'dart:async';

import 'package:minstapp/pages/login/loginApp.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navega a la pantalla de login después de 3 segundos
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF023657), // Cambia el color de fondo si lo deseas
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Muestra el logo
            Icon(Icons.library_add, size: 100, color: Colors.white),
            SizedBox(height: 10),
            // Texto opcional de bienvenida o nombre de la app
            Text(
              'mInst',
              style: TextStyle(
                fontSize: 70,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
