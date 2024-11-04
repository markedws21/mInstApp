// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minstapp/Common/MyRouters.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration:  BoxDecoration(
          image: DecorationImage(
            image: const AssetImage("assets/images/fond.jpg"), // URL de la imagen
            fit: BoxFit.cover, // Ajusta la imagen al tamaño del contenedor
            colorFilter: ColorFilter.mode(
              Colors.blue.withOpacity(0.8), // Aumenta la opacidad para hacer la imagen menos visible
              BlendMode.darken, // O usa BlendMode.overlay para un efecto más sutil
            ),
          ),
        ),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Icon(
                  Icons.library_add, 
                  size: 150,
                  color: Colors.white,
                  //color:  Color(0xFF023657),
                  ),
                  Text("mInst",
                  style: GoogleFonts.poppins(
                    fontSize: 70,
                    color: Colors.white,
                    //color: const Color(0xFF023657),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                Text("INICIAR SESION",
                  style: GoogleFonts.poppins(
                    fontSize: 25,
                    color: Colors.white,
                    //color: const Color(0xFF023657),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 30),
                //TEXTBOX USUARIO
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      //border: Border.all(
                      //  color: Colors.black,
                      //),
                    borderRadius: BorderRadius.circular(15),
                    ),
                  child: const Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child:  TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Usuario",
                      ),
                    )
                   )
                  ),
                ),
                //
                const SizedBox(height: 30),
                //TEXTBOX CONTRASEÑA
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      //border: Border.all(
                      //  color: Colors.black,
                      //),
                    borderRadius: BorderRadius.circular(15),
                    ),
                  child: const Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child:  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Contraseña",
                      ),
                    )
                   )
                  ),
                ),
                //
                const SizedBox(height: 20),
                //BOTON
                InkWell(
                  onTap: () {
                        Navigator.pushNamed(context, ROUTE_MENU);
                      },
                  child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0
                  ),
                  child: Container(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0,top: 15.0, bottom: 15.0),
                    decoration: BoxDecoration(
                    color: const Color(0xFF023657),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Center(
                    child: Text("Ingresar",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  ),
                  ),
                  ),
                ),
                //
                const SizedBox(height: 20),
                InkWell(
                      onTap: () {
                        //Navigator.pushNamed(context, ROUTE_REGISTRO);
                      },
                  child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0
                  ),
                  child: Container(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0,top: 10.0, bottom: 10.0),
                    decoration: BoxDecoration(
                    //color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Center(
                    child: Text("Olvidaste tu contraseña?",
                    style: TextStyle(
                      //color: Color(0xFF023657),
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  ),
                  ),
                  ),
                    ),

                ],
              ),
            )
          ),
        ),
    ));
  }
}