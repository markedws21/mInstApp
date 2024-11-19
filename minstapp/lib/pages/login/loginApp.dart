// ignore_for_file: file_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:minstapp/Common/MyRouters.dart';
import 'package:minstapp/pages/login/authApp.dart';
import 'package:minstapp/pages/menu/menu.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return WillPopScope(
      onWillPop: () async {
        return false;
      },

    child:  Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration:  BoxDecoration(
          image: DecorationImage(
            image: const AssetImage("assets/images/fond.jpg"), // URL de la imagen
            fit: BoxFit.cover, // Ajusta la imagen al tamaño del contenedor
            colorFilter: ColorFilter.mode(
              const Color(0xFF023657).withOpacity(0.9), // Aumenta la opacidad para hacer la imagen menos visible
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
                  Icons.library_books, 
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
                Text("Iniciar Sesión",
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
                    borderRadius: BorderRadius.circular(12),
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
                const SizedBox(height: 15),
                //TEXTBOX CONTRASEÑA
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      //border: Border.all(
                      //  color: Colors.black,
                      //),
                    borderRadius: BorderRadius.circular(12),
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: SizedBox(
                  width: double.infinity, // Establece el ancho deseado aquí
                  child: ElevatedButton(
                    onPressed: () async {
                        await Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => MenuPage(), // La página de destino
                          ),
                        );
                        // Aquí puedes agregar más lógica después de la navegación, si es necesario.
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF023657),
                      padding: const EdgeInsets.symmetric(vertical: 15.0), // Padding vertical
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      elevation: 5,
                    ),
                    child: const Text(
                      "Ingresar",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                       ),
                      ),
                    ),
                  ),
                ),
                //
                const SizedBox(height: 15),
                InkWell(
                  onTap: () async {
                        await Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => const AuthPage(), // La página de destino
                          ),
                        );
                        // Aquí puedes agregar más lógica después de la navegación, si es necesario.
                  },
                  child: Padding(
                    padding:  const EdgeInsets.symmetric(
                      horizontal: 20.0
                    ),
                    child: Text("Olvidaste tu contraseña?",
                        style: GoogleFonts.poppins(
                          //color: Color(0xFF023657),
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                    ),
                  ),
                ),

              ],
                ),
              )
            ),
          ),
        )
      )
    );
  }
}