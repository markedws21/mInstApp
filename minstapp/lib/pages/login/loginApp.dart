// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:minstapp/Common/MyRouters.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              Colors.white,
              Colors.white,
            ],
            )
      ),
      child: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Icon(
                  Icons.library_add, 
                  size: 150, 
                  color:  Color(0xFF023657),),
                const Text("mInst",
                  style: TextStyle(
                    fontSize: 70,
                    color: Color(0xFF023657),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                const Text("Iniciar Sesion",
                  style: TextStyle(
                    fontSize: 30,
                    color: Color(0xFF023657),
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
                      border: Border.all(
                        color: Colors.black,
                      ),
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
                      border: Border.all(
                        color: Colors.black,
                      ),
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
                    padding: const EdgeInsets.all(20),
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
                      child: const Text("Olvidaste tu contraseña?",
                       style: TextStyle(
                        fontSize: 20,
                        color:  Color(0xFF023657),
                        decoration: TextDecoration.underline,
                      ),),
                    ),

              ],
            ),
          )
        ),
      ),
    ));
  }
}