import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minstapp/Common/MyRouters.dart';

class MenuPage extends StatelessWidget {
  MenuPage({super.key});
  final List<String> images = [
    "assets/images/fond.jpg",
    "assets/images/cib.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(
          child: Container(
            color: const Color(0xFF023657),
            child: Column(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  margin: const EdgeInsets.only(top: 20,bottom: 20),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.person,size: 50,color:  Colors.white,),
                        ]
                      ),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("BIENVENIDO MARK",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color:  Colors.white),),
                          Text("espinozarojasmark@gmail.com",style: GoogleFonts.poppins(fontSize: 10,color: Colors.white,),),
                        ]
                      ),
                    ],
                  ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, ROUTE_LOGIN);
                  },
                  child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        color: Colors.black,
                      ),
                    borderRadius: BorderRadius.circular(10),
                    ),
                  margin: const EdgeInsets.only(top: 30,bottom: 10,right: 15,left: 15),
                  padding: const EdgeInsets.all(20),
                  width: double.infinity,
                  child: const Row(
                    children: [
                      Icon(
                        Icons.home, // Icono
                        color: Colors.black,
                      ),
                      SizedBox(width: 10), // Espacio entre el icono y el texto
                      Text(
                        "Inicio",
                        style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                ),

                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, ROUTE_LOGIN);
                  },
                  child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: const EdgeInsets.only(top: 10, bottom: 10, right: 15, left: 15),
                  padding: const EdgeInsets.all(20),
                  width: double.infinity,
                  child: const Row(
                    children: [
                      Icon(
                        Icons.star, // Icono
                        color: Colors.black,
                      ),
                      SizedBox(width: 10), // Espacio entre el icono y el texto
                      Text(
                        "Puntos",
                        style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  ),
                ),
              ],
            ),
          )
        ),
        appBar: AppBar(
          title: Text('INICIO',
            style: GoogleFonts.poppins(fontSize: 20,
            color: const Color(0xFF023657),
            fontWeight: FontWeight.bold
            ),),
            backgroundColor: Colors.white,
            leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.menu,color: Color(0xFF023657),size: 25,), // Cambia este icono por el que prefieras
                  onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //IMAGEN
              Stack(
                children: [
                  Image.asset("assets/images/cib.jpg",
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                  ),
                  const Positioned(
                    left: 16,
                    bottom: 16,
                    child: Text("CIBERTEC",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  ),
                ]
              ),
              //Anuncios
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("RECIENTES",
                style: GoogleFonts.poppins(
                  color:  const Color(0xFF023657),
                  fontSize: 20, fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                 InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, ROUTE_LOGIN);
                  },
                  child: _buildAnnouncementCard("WEBINARS", Colors.transparent),
                ),
                _buildAnnouncementCard("TALLERES", Colors.transparent),
                _buildAnnouncementCard("FERIA LABORAL", Colors.transparent),
              ],
              ),
              const SizedBox(height: 10),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildAnnouncementCard("TRAMITES", Colors.transparent),
                _buildAnnouncementCard("BLACKBOARD", Colors.transparent),
                _buildAnnouncementCard("BENEFICIOS", Colors.transparent),
              ],
              ),
              // Sección de Próxima Clase
             Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "PROXIMA CLASE",
                    style: GoogleFonts.poppins(fontSize: 20, 
                    color:  const Color(0xFF023657),fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.access_time, size: 40,color:  Color(0xFF023657),),
                          Text("LUNES", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color:  Color(0xFF023657)),),
                          Text("11:00 AM", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color:  Color(0xFF023657)),),
                        ]
                      ),
                      const SizedBox(width: 30),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "DESARROLLO\nPROFESIONAL I",
                            style: GoogleFonts.poppins(fontSize: 17, fontWeight: FontWeight.bold,color:  const Color(0xFF023657)),
                          ),
                          Text("E-103 - T5DN",
                            style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.bold,color:  const Color(0xFF023657)),),
                        ],
                      ),
                      const SizedBox(width: 30),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("DOCENTE:\nESPINOZA ROJAS\nMARK EDWARD",
                          style: GoogleFonts.poppins(fontSize: 17, fontWeight: FontWeight.bold,color:  const Color(0xFF023657)),),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // NOTICIAS
                Padding(
                padding: const EdgeInsets.only(top: 16,bottom: 10,right: 16,left: 16),
                child: Text("NOTICIAS",
                style: GoogleFonts.poppins(
                  color:  const Color(0xFF023657),
                  fontSize: 20, fontWeight: FontWeight.bold
                  ),
                ),
              ),
               Padding(
                padding: const EdgeInsets.only(top: 6,bottom: 10,right: 16,left: 16),
                child: CarouselSlider(
                  items: images.map((e)=> SizedBox(
                    child: Center(
                      child: Image.asset(e,fit: BoxFit.cover,width: double.infinity,),
                    ),
                  )).toList(),
                  options: CarouselOptions(
                    initialPage: 0,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 4),
                    autoPlayAnimationDuration: const Duration(milliseconds: 800), // Duración de la transición
                    autoPlayCurve: Curves.easeInOut, // Curva de la animación
                    enlargeCenterPage: true,
                    enlargeFactor: 0.1,
                    enlargeStrategy: CenterPageEnlargeStrategy.scale, // Cambia el tipo de agrandamiento
                    height: 100,
                    scrollDirection: Axis.horizontal,
                    pageSnapping: true,
                  )
                  ),

                ),
            ],
          ),
        )
      ),
    );
  }
}
  Widget _buildAnnouncementCard(String text, Color color) {
    return Container(
      width: 120,
      height: 70,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
            colors: <Color>[
              Color(0xFF02AAB0),
              Color(0xFF00CDAC),
            ],
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
    );
}


