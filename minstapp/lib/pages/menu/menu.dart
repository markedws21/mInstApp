import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minstapp/widgets/default/scaffold.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  MenuPageState createState() => MenuPageState();
}

class MenuPageState extends State<MenuPage> {
  bool _isVisible = false;

  final List<String> images = [
    "assets/images/fond.jpg",
    "assets/images/cib.jpg",
  ];

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 300), () {
      setState(() {
        _isVisible = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: DefaultScaffold(
        title: 'INICIO',
        body: AnimatedOpacity(
          opacity: _isVisible ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 500),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(),
              _buildSectionTitle("RECIENTES"),
              _buildRecentButtons(context),
              _buildSectionTitle("PRÓXIMA CLASE"),
              _buildNextClassSection(),
              _buildSectionTitle("NOTICIAS"),
              _buildNewsCarousel(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Stack(
      children: [
        Container(
          height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/cib.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: 200,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black.withOpacity(0.5), Colors.transparent],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
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
    );
  }

  Widget _buildRecentButtons(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("No hay actividades recientes.")
          ],
        ),
      ),
    );
  }

  Widget _buildNewsCarousel() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: CarouselSlider(
          items: images.map((e) => ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Stack(
              children: [
                Image.asset(e, fit: BoxFit.cover, width: double.infinity),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.black.withOpacity(0.3), Colors.transparent],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                ),
              ],
            ),
          )).toList(),
          options: CarouselOptions(
            height: 120,
            autoPlay: true,
            enlargeCenterPage: true,
            autoPlayInterval: const Duration(seconds: 4),
            autoPlayCurve: Curves.easeInOut,
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        title,
        style: GoogleFonts.poppins(
          color: const Color(0xFF023657),
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildNextClassSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "SEGURIDAD DE APLICACIONES II",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF023657),
                ),
              ),
              SizedBox(height: 4),
              Row(
                children: [
                  Icon(Icons.access_time, color: Color(0xFF023657)),
                  SizedBox(width: 8),
                  Text("LUNES - 11:00 AM",
                      style: GoogleFonts.poppins(fontSize: 12)),
                ],
              ),
              SizedBox(height: 4),
              Row(
                children: [
                  Icon(Icons.class_, color: Color(0xFF023657)),
                  SizedBox(width: 8),
                  Text("AULA E-103 - T5DN",
                      style: GoogleFonts.poppins(fontSize: 12)),
                ],
              ),
              SizedBox(height: 4),
              Row(
                children: [
                  Icon(Icons.person, color: Color(0xFF023657)),
                  SizedBox(width: 8),
                  Text("SANTIVAÑEZ JUAN JOSE",
                      style: GoogleFonts.poppins(fontSize: 12)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
