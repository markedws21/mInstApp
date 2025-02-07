// ignore_for_file: file_names

//import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minstapp/pages/login/login_app.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
       resizeToAvoidBottomInset: false,
        body: Container(
        decoration:  BoxDecoration(
          image: DecorationImage(
            image: const AssetImage("assets/images/fond.jpg"), 
            fit: BoxFit.cover,                            
            colorFilter: ColorFilter.mode(
              const Color(0xFF023657).withOpacity(0.9),  
              BlendMode.darken, 
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
                Text("Recuperar Contraseña",
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
                const SizedBox(height: 10),
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
                        hintText: "Nueva Contraseña",
                      ),
                    )
                   )
                  ),
                ),
                // CAMBIAR CONTRASEÑA
                const SizedBox(height: 10),
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
                        hintText: "Confirmar Contraseña",
                      ),
                    )
                   )
                  ),
                ),
                //BOTON
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: SizedBox(
                  width: double.infinity, // Establece el ancho deseado aquí
                  child: ElevatedButton(
                    onPressed: () async {
                    showConfirmationDialog(context);
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(), // La página de destino
                      ),
                    );
                    //Navigator.pushNamed(context, ROUTE_LOGIN);
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
                      "Cambiar Contraseña",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
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
      )
    )
    );
  }
  
  void showConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible : false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Confirmación"),
          content: const Text("La contraseña ha sido cambiada exitosamente."),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Cierra el dialog
              },
              child: const Text("Ir a Login"),
            ),
          ],
        );
      },
    );
  }
}