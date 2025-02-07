import 'package:carousel_slider/carousel_slider.dart'; 
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minstapp/Pages/Notificaciones/notificaciones.dart';
import 'package:minstapp/widgets/default/scaffold.dart';

class MenuPage extends StatelessWidget {
  MenuPage({super.key});
  final List<String> images = [
    "assets/images/fond.jpg",
    "assets/images/cib.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: DefaultScaffold(
        title: 'INICIO',
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Encabezado con imagen
              Stack(
                children: [
                  Image.asset(
                    "assets/images/cib.jpg",
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                  const Positioned(
                    left: 16,
                    bottom: 16,
                    child: Text(
                      "MinstApp",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),

              // Sección Recientes
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "RECIENTES",
                  style: GoogleFonts.poppins(
                    color: const Color(0xFF023657),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NotificacionesPage(),
                        ),
                      );
                    },
                    child: Text("Notificaciones"),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NotificacionesPage(),
                        ),
                      );
                    },
                    child: Text("Recientes"),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NotificacionesPage(),
                        ),
                      );
                    },
                    child: Text("Extras"),
                  ),
                ],
              ),

              // Sección Próxima Clase
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "PRÓXIMA CLASE",
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    color: const Color(0xFF023657),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              _buildNextClassSection(),

              // Sección Noticias
              Padding(
                padding: const EdgeInsets.only(
                    top: 16, bottom: 10, right: 16, left: 16),
                child: Text(
                  "NOTICIAS",
                  style: GoogleFonts.poppins(
                    color: const Color(0xFF023657),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 6, bottom: 10, right: 16, left: 16),
                child: CarouselSlider(
                  items: images.map((e) => SizedBox(
                        child: Center(
                          child: Image.asset(
                            e,
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        ),
                      )).toList(),
                  options: CarouselOptions(
                    initialPage: 0,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 4),
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    autoPlayCurve: Curves.easeInOut,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.1,
                    enlargeStrategy: CenterPageEnlargeStrategy.scale,
                    height: 100,
                    scrollDirection: Axis.horizontal,
                    pageSnapping: true,
                  ),
                ),
              ),            
            ],
          ),
        ),
      ),
    );
  }

  /// Método modular para la sección "PRÓXIMA CLASE"
Widget _buildNextClassSection() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0),
    child: Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.access_time, size: 40, color: Color(0xFF023657)),
              SizedBox(height: 4),
              Text(
                "LUNES",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF023657),
                ),
              ),
              Text(
                "11:00 AM",
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF023657),
                ),
              ),
            ],
          ),
          // Detalles de la clase
          SizedBox(width: 20),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "DESARROLLO PROFESIONAL I",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF023657),
                  ),
                ),
                Text(
                  "E-103 - T5DN",
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF023657),
                  ),
                ),
              ],
            ),
          ),
          // Información del docente
          SizedBox(width: 20),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "DOCENTE:",
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF023657),
                  ),
                ),
                Text(
                  "ESPINOZA ROJAS\nMARK EDWARD",
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF023657),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
}