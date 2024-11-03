import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minstapp/Common/MyRouters.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

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
                  margin: const EdgeInsets.only(top: 50,bottom: 20),
                  child: const Icon(Icons.supervised_user_circle,size: 100,color: Colors.blueAccent,),
                ),
                Text("BIENVENIDO",style: GoogleFonts.poppins(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                Text("MARK EDWARD ESPINOZA ROJAS",style: GoogleFonts.poppins(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
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
                  Image.network("https://directusportal.cibertec.edu.pe/assets/44a7973d-c4d5-4359-846d-d0266d946214.jpg",
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
                child: Text("ANUNCIOS",
                style: GoogleFonts.poppins(
                  color:  const Color(0xFF023657),
                  fontSize: 20, fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildAnnouncementCard("WEBINARS\n06/07", Colors.green),
                _buildAnnouncementCard("TALLERES\nJUNIO", Colors.green),
                _buildAnnouncementCard("FERIA LABORAL", Colors.green),
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
                          Icon(Icons.access_time, size: 40),
                          Text("LUNES", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                          Text("11:00 AM", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                        ]
                      ),
                      const SizedBox(width: 30),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "DESARROLLO\nPROFESIONAL I",
                            style: GoogleFonts.poppins(fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          Text("E-103 - T5DN",
                            style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.bold),),
                        ],
                      ),
                      const SizedBox(width: 30),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("DOCENTE:\nZARELA SANCHEZ",
                          style: GoogleFonts.poppins(fontSize: 17, fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //
            ],
          ),
        )
      ),
    );
  }
}
  Widget _buildAnnouncementCard(String text, Color color) {
    return Container(
      width: 100,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.green,
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


