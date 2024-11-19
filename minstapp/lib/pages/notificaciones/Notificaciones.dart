// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:minstapp/widgets/default/scaffold.dart';

class NotificacionesPage extends StatelessWidget {
  const NotificacionesPage({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: DefaultScaffold(
        title: 'NOTIFICACIONES',
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                // Contenedor principal
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Contenedor con icono en Start
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        child: const Icon(
                          Icons.notifications,
                          size: 30.0,
                          color: Colors.blue,
                        ),
                      ),
                      // Contenedor con icono en End
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        child: const Icon(
                          Icons.settings,
                          size: 30.0,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
