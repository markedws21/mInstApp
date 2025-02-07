import '../models/curso_model.dart';

final Map<int, List<Curso>> horarioPorSemana = {
  1: [
    Curso(dia: "Lunes", nombre: "Desarrollo Profesional", seccion: "T6DN - 01", modalidad: "Virtual", horario: "7:30 am - 8:45 am"),
    Curso(dia: "Martes", nombre: "Portugués", seccion: "T6CN - 01", modalidad: "Presencial", horario: "8:30 am - 12:00 am"),
  ],
  2: [
    Curso(dia: "Lunes", nombre: "Matemáticas", seccion: "T6DN - 02", modalidad: "Presencial", horario: "8:00 am - 9:30 am"),
    Curso(dia: "Martes", nombre: "Historia", seccion: "T5CN - 01", modalidad: "Virtual", horario: "9:30 am - 11:00 am"),
  ],
};