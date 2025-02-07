import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:go_router/go_router.dart';
import 'package:minstapp/Pages/Calendario/calendario_page.dart';
import 'package:minstapp/Pages/Carnet/cardPhoto.dart';
import 'package:minstapp/Pages/Horario/horario_page.dart';
import 'package:minstapp/Pages/Menu/menu.dart';
import 'package:minstapp/Pages/Notas/notasPage.dart';
import 'package:minstapp/Pages/Notificaciones/notificaciones.dart';

class DrawerNav extends StatefulWidget {
  const DrawerNav({super.key});

  @override
  State<DrawerNav> createState() => _DrawerNavState();
}

class _DrawerNavState extends State<DrawerNav> {
  int _selectedIndex = -1; // Índice de selección inicial

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color(0xFF023657), // Fondo azul oscuro
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Encabezado
            _buildHeader(),
            _buildHeader2(),
            const Divider(color: Colors.white, thickness: 2),

            // Opciones del menú como botones
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _buildMenuButton(
                      index: 0,
                      icon: Icons.home,
                      text: "INICIO",
                      onTap: () => context.go('/menu'),
                    ),
                    _buildMenuButton(
                      index: 1,
                      icon: Icons.badge,
                      text: "MI CARNET",
                      onTap: () => context.go('/card'),
                    ),
                    _buildMenuButton(
                      index: 2,
                      icon: Icons.schedule,
                      text: "HORARIO",
                      onTap: () => context.go('/horario'),
                    ),
                    _buildMenuButton(
                      index: 3,
                      icon: Icons.check_circle,
                      text: "NOTAS",
                      onTap: () => context.go('/notas'),
                    ),
                    _buildMenuButton(
                      index: 4,
                      icon: Icons.calendar_today,
                      text: "CALENDARIO",
                      onTap: () => context.go('/calendario'),
                    ),
                    _buildMenuButton(
                      index: 5,
                      icon: Icons.notifications,
                      text: "NOTIFICACIONES",
                      onTap: () => context.go('/notificaciones'),
                    ),
                    _buildMenuButton(
                      index: 6,
                      icon: Icons.people,
                      text: "CORREO",
                      onTap: () => context.go('/correo'),
                    ),
                  ],
                ),
              ),
            ),

            // Botón de cerrar sesión
            const Divider(color: Colors.white, thickness: 2),
            _buildMenuButton(
              index: 7,
              icon: Icons.power_settings_new,
              text: "CERRAR SESION",
              onTap: () {
                context.go('/login');
              },
              isLogout: true,
            ),
          ],
        ),
      ),
    );
  }

  /// 📌 **Encabezado del Drawer**
  Widget _buildHeader() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 16),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          const Icon(
            Icons.library_books,
            size: 30,
            color: Colors.white,
          ),
          IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 30,
          )
          )
        ]
      ),
    );
  }

  Widget _buildHeader2() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          const Icon(Icons.person, size: 50, color: Colors.white),
          const SizedBox(width: 16),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "MARK EDWARD",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  "ESPINOZA ROJAS",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  "i20202159@cibertec.edu.pe",
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    color: Colors.white70,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// 📌 **Botón de Menú con Cambio de Color**
  Widget _buildMenuButton({
    required int index,
    required IconData icon,
    required String text,
    required VoidCallback onTap,
    bool isLogout = false,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: TextButton(
        onPressed: () {
          setState(() => _selectedIndex = index);
          onTap();
        },
        style: TextButton.styleFrom(
          backgroundColor: _selectedIndex == index
              ? (isLogout ? Colors.redAccent : const Color(0xFF3CB371))
              : Colors.transparent,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        child: Row(
          children: [
            Icon(icon, color: Colors.white),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                text,
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// 📌 **Navegación a otra página**
  void _navigateToPage(Widget page, int index) {
    setState(() => _selectedIndex = index);
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }
}
