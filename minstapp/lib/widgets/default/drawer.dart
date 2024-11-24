import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minstapp/pages/calendario/calendarPage.dart';
import 'package:minstapp/pages/carnet/cardPhoto.dart';
import 'package:minstapp/pages/horario/horarioPage.dart';
import 'package:minstapp/pages/login/loginApp.dart';
import 'package:minstapp/pages/menu/menu.dart';
import 'package:minstapp/pages/notas/notasPage.dart';
import 'package:minstapp/pages/notificaciones/notificaciones.dart';

class DrawerNav extends StatefulWidget {
  const DrawerNav({super.key});

  @override
  State<DrawerNav> createState() => _DrawerNavState();
}

class _DrawerNavState extends State<DrawerNav> {
  // Índice para rastrear el ítem seleccionado
  int _selectedIndex = -1; // Ninguno seleccionado inicialmente

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color(0xFF023657), // Fondo azul oscuro
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 50, bottom: 1, left: 16, right: 16),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Contenedor con el icono alineado a la izquierda
                const Icon(
                  Icons.library_books, // Aquí puedes cambiar el icono
                  size: 30,
                  color: Colors.white,
                ),
                // Contenedor con el icono alineado a la derecha
                IconButton(
                  onPressed: (){
                    Navigator.pop(context); // Cierra el Drawer
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 30,
                  )
                )
              ],
            ),
            ),
            // Encabezado
            Container(
              padding: const EdgeInsets.only(top: 10, bottom: 16, left: 16, right: 16),
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
                            letterSpacing: 1,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          "ESPINOZA ROJAS",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            letterSpacing: 1,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          "i20202159@cibertec.edu.pe",
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Divider(color: Colors.white, thickness: 4),
            // OPCIONES MENU
            Expanded(
              child: ListView(
                children: [
                  _buildMenuItem(
                    context,
                    index: 0,
                    icon: Icons.home,
                    text: "INICIO",
                    onTap: () {
                      setState(() => _selectedIndex = 0);
                      Navigator.push(
                        context,
                        CupertinoPageRoute(builder: (context) => MenuPage()),
                      );
                    },
                  ),
                  _buildMenuItem(
                    context,
                    index: 1,
                    icon: Icons.badge,
                    text: "MI CARNET",
                    onTap: () {
                      setState(() => _selectedIndex = 1);
                      Navigator.push(
                        context,
                        CupertinoPageRoute(builder: (context) => const CardPhotoPage()),
                      ); // Marca seleccionado
                    },
                  ),
                  _buildMenuItem(
                    context,
                    index: 2,
                    icon: Icons.schedule,
                    text: "HORARIO",
                    onTap: () {
                      setState(() => _selectedIndex = 2);
                      Navigator.push(
                        context,
                        CupertinoPageRoute(builder: (context) => const HorarioPage()),
                      ); // Marca seleccionado
                    },
                  ),
                  _buildMenuItem(
                    context,
                    index: 3,
                    icon: Icons.check_circle,
                    text: "NOTAS",
                    onTap: () {
                      setState(() => _selectedIndex = 3);
                      Navigator.push(
                        context,
                        CupertinoPageRoute(builder: (context) => const Notaspage()),
                      ); // Marca seleccionado
                    },
                  ),
                  _buildMenuItem(
                    context,
                    index: 4,
                    icon: Icons.calendar_today,
                    text: "CALENDARIO",
                    onTap: () {
                      setState(() => _selectedIndex = 4);
                      Navigator.push(
                        context,
                        CupertinoPageRoute(builder: (context) => CalendarPage()),
                      );
                    },
                  ),
                  _buildMenuItem(
                    context,
                    index: 5,
                    icon: Icons.notifications,
                    text: "NOTIFICACIONES",
                    onTap: () {
                      setState(() => _selectedIndex = 5);
                      Navigator.push(
                        context,
                        CupertinoPageRoute(builder: (context) => const NotificacionesPage()),
                      );
                    },
                  ),
                  _buildMenuItem(
                    context,
                    index: 6,
                    icon: Icons.people,
                    text: "CORREO",
                    onTap: () {
                      setState(() => _selectedIndex = 6);
                      Navigator.push(
                        context,
                        CupertinoPageRoute(builder: (context) => const CardPhotoPage()),
                      ); // Marca seleccionado
                    },
                  ),
                ],
              ),
            ),
            // Cerrar sesión
            _buildMenuItem(
              context,
              index: 7,
              icon: Icons.power_settings_new,
              text: "CERRAR SESION",
              isLogout: true,
              onTap: () {
                setState(() => _selectedIndex = 7);
                Navigator.pushAndRemoveUntil(
                  context,
                  CupertinoPageRoute(builder: (context) => const LoginPage()),
                  ModalRoute.withName('/'),
                ); // Marca seleccionado
              },
            ),
          ],
        ),
      ),
    );
  }

  // Método para construir cada ítem del menú
  Widget _buildMenuItem(
    BuildContext context, {
    required int index,
    required IconData icon,
    required String text,
    bool isLogout = false,
    VoidCallback? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      onLongPress: () {
        setState(() => _selectedIndex = index); // Marca seleccionado al mantener presionado
      },
      child: Container(
        padding: const EdgeInsets.only(left: 10, right: 10),
        color: _selectedIndex == index
            ? const Color(0xFF3CB371) // Color verde para el ítem seleccionado
            : Colors.transparent,
        child: ListTile(
          leading: Icon(icon, color: Colors.white),
          title: Text(
            text,
            style: GoogleFonts.poppins(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
