import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minstapp/widgets/default/drawer.dart';

class DefaultScaffold extends StatelessWidget {
  final Widget body;
  final String title;
  final List<Widget>? actions;
  final Widget? floatingActionButton;
  final TextStyle? titleTextStyle;

  const DefaultScaffold({
    super.key,
    required this.body,
    this.title = '',
    this.titleTextStyle,
    this.floatingActionButton,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF023657),
        title: Text(title,
        style: titleTextStyle ?? GoogleFonts.poppins(
          fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.bold
          ),
        ),
        leading: Builder(builder: (context) {
          return IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () {
              // Abre el Drawer al hacer clic
              Scaffold.of(context).openDrawer();
            },
          );
        }),
        actions: actions,
      ),
      drawer: const DrawerNav(), // Asignar el Drawer aquí
      body: body,
      floatingActionButton: floatingActionButton,
    );
  }
}
