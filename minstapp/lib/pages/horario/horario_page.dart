import 'package:flutter/material.dart';
import 'package:minstapp/widgets/default/scaffold.dart';
import 'package:minstapp/Models/curso_model.dart';

class HorarioPage extends StatefulWidget {
  const HorarioPage({super.key});

  @override
  HorarioPageState createState() => HorarioPageState();
}

class HorarioPageState extends State<HorarioPage> {
  int _semanaActual = 1; // Semana inicial

  @override
  Widget build(BuildContext context) {
    List<Cursos> cursosSemana = HorarioData.horarioPorSemana[_semanaActual] ?? [];

    return WillPopScope(
      onWillPop: () async => false,
      child: DefaultScaffold(
        title: 'HORARIO',
        body: Column(
        children: [
          _buildSemanaSelector(),
          Expanded(
            child: ListView.builder(
                itemCount: cursosSemana.length,
                itemBuilder: (context, index) {
                  final curso = cursosSemana[index];
                  return _buildCursoCard(curso);
                },
              ),
            ),
          ],
        ),
      )
    );
  }

  // Selector de semanas con botones < y >
  Widget _buildSemanaSelector() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.chevron_left),
            onPressed: () {
              setState(() {
                if (_semanaActual > 1) _semanaActual--;
              });
            },
          ),
          Text(
            "Semana $_semanaActual",
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          IconButton(
            icon: const Icon(Icons.chevron_right),
            onPressed: () {
              setState(() {
                if (HorarioData.horarioPorSemana.containsKey(_semanaActual + 1)) {
                  _semanaActual++;
                }
              });
            },
          ),
        ],
      ),
    );
  }

  // Card para cada curso
  Widget _buildCursoCard(Cursos curso) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              curso.dia,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  curso.nombre,
                  style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
                Text(
                  curso.modalidad,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: curso.modalidad == "Virtual" ? Colors.blue : Colors.green,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Profesor: ${curso.profesor}",
                  style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 4),
                Text(
                  "Sección: ${curso.seccion}",
                  style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(height: 4),
            Text(
              "Hora: ${curso.horario}",
              style: const TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}

 //@override
 //Widget build(BuildContext context) {
 //  return PopScope(
 //    canPop: false, // Bloquea el botón de retroceso
 //    child: DefaultScaffold(
 //      title: 'HORARIO',
 //      body: const SizedBox(
 //        
 //      ),
 //    ),
 //  );
 //}

