// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:minstapp/widgets/default/scaffold.dart'; // Asegúrate de que DefaultScaffold esté definido correctamente.

class CardPhotoPage extends StatelessWidget {
  const CardPhotoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop, // Evitar que se pueda retroceder
      child: DefaultScaffold(
        title: 'MI CARNET',
        body: Center(
          child: Container(
            width: 300, // Ancho del carnet
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: <Color>[
                  Color(0xFF023657),
                  Color(0xFF00CDAC),
                ],
              ),
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Encabezado verde con texto "ESTUDIANTE"
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text(
                      'ESTUDIANTE',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                // Imagen del estudiante
                ClipOval(
                  child: Image.asset(
                    "assets/images/foto_carnet.jpg", // URL de la imagen
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 10),
                // Nombre del estudiante
                Text(
                  'MARK EDWARD',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                // Nombre del estudiante
                Text(
                  'ESPINOZA ROJAS',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 10),
                // Carrera
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    'COMPUTACIÓN E INFORMÁTICA',
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                // Código de barras (ejemplo simple)
                Container(
                  width: double.infinity,
                  height: 40,
                  color: Colors.grey.shade300,
                  alignment: Alignment.center,
                  child: const Text('Código de Barras', style: TextStyle(color: Colors.black45)),
                ),
                const SizedBox(height: 5),
                // Código ID
                Text(
                  'i202021690',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 10),
                // Botones de descarga y compartir
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.download, color: Colors.white),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.share, color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<bool> _onWillPop() {
    return Future.value(false); // Prevenir el retroceso
  }
}
