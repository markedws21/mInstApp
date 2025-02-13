import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  LoginPageState createState() => LoginPageState();
}
class LoginPageState extends State<LoginPage> {
  bool _isImageLoaded = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    precacheImage(const AssetImage("assets/images/fond.jpg"), context).then((_) {
      setState(() {
        _isImageLoaded = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          // Fondo de color sólido
          Container(
            color: const Color(0xFF023657),
          ),
          // Imagen con animación de desvanecimiento
          AnimatedOpacity(
            duration: const Duration(seconds: 1), // Duración del fade
            opacity: _isImageLoaded ? 1.0 : 0.0, // Aparece suavemente
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage("assets/images/fond.jpg"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    const Color(0xFF023657).withOpacity(0.9),
                    BlendMode.darken,
                  ),
                ),
              ),
            ),
          ),
          // Contenido de la pantalla
          SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(Icons.library_books, size: 150, color: Colors.white),
                  _buildTitle("mInst", 70, FontWeight.bold),
                  const SizedBox(height: 20),
                  _buildTitle("Iniciar Sesión", 25, FontWeight.bold),
                  const SizedBox(height: 30),
                  _buildTextField("Usuario"),
                  const SizedBox(height: 15),
                  _buildTextField("Contraseña", obscureText: true),
                  const SizedBox(height: 20),
                  _buildButton("Ingresar", () => context.go('/menu')),
                  const SizedBox(height: 15),
                  InkWell(
                    onTap: () => context.push('/auth'),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        "Olvidaste tu contraseña?",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  
  // Widget reutilizable para título
  Widget _buildTitle(String text, double size, FontWeight weight) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        fontSize: size,
        color: Colors.white,
        fontWeight: weight,
      ),
    );
  }

  // Widget reutilizable para los campos de texto
  Widget _buildTextField(String hint, {bool obscureText = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TextField(
            obscureText: obscureText,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hint,
            ),
          ),
        ),
      ),
    );
  }

  // Widget reutilizable para botones
  Widget _buildButton(String text, VoidCallback onPressed) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF023657),
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            elevation: 5,
          ),
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
