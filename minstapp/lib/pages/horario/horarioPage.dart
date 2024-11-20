// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:minstapp/widgets/default/scaffold.dart';

class HorarioPage extends StatelessWidget {
  const HorarioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: DefaultScaffold(
        title: 'HORARIO',
        body: SizedBox(
          
        ),
      ),
    );
  }

  // Método para detectar si se presiona el botón Atrás
  Future<bool> _onWillPop() {
    return Future.value(false);
  }
}