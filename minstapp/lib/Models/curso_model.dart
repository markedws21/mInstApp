class Cursos {
  final String dia;
  final String nombre;
  final String seccion;
  final String profesor;
  final String modalidad;
  final String horario;

  Cursos({
    required this.dia,
    required this.nombre,
    required this.seccion,
    required this.modalidad,
    required this.horario,
    required this.profesor,
  });
}

// Datos de prueba dentro del modelo
class HorarioData {
  static final Map<int, List<Cursos>> horarioPorSemana = {
    1: [
      Cursos(dia: "Lunes", nombre: "Desarrollo Profesional", profesor: "Pepe",seccion: "T6DN - 01", modalidad: "Virtual", horario: "7:30 am - 8:45 am"),
      Cursos(dia: "Martes", nombre: "Portugués", profesor: "Pepe",seccion: "T6CN - 01", modalidad: "Presencial", horario: "8:30 am - 12:00 am"),
      Cursos(dia: "Miercoles", nombre: "Modela de Datos 1", profesor: "Pepe",seccion: "T5AN - 02", modalidad: "Presencial", horario: "8:30 am - 12:00 am"),
      Cursos(dia: "Jueves", nombre: "Desarrollo Profesional", profesor: "Pepe",seccion: "T6DN - 01", modalidad: "Virtual", horario: "7:30 am - 8:45 am"),
      Cursos(dia: "Viernes", nombre: "Portugués", profesor: "Pepe",seccion: "T6CN - 01", modalidad: "Presencial", horario: "8:30 am - 12:00 am"),
      Cursos(dia: "Sabado", nombre: "Modela de Datos 1", profesor: "Pepe",seccion: "T5AN - 02", modalidad: "Presencial", horario: "8:30 am - 12:00 am"),
    ],
    2: [
      Cursos(dia: "Lunes", nombre: "Matemáticas", profesor: "Pepe",seccion: "T6DN - 02", modalidad: "Presencial", horario: "8:00 am - 9:30 am"),
      Cursos(dia: "Martes", nombre: "Historia", profesor: "Pepe",seccion: "T5CN - 01", modalidad: "Virtual", horario: "9:30 am - 11:00 am"),
    ],
    3: [
      Cursos(dia: "Jueves", nombre: "Desarrollo Profesional", profesor: "Pepe",seccion: "T6DN - 01", modalidad: "Virtual", horario: "7:30 am - 8:45 am"),
      Cursos(dia: "Viernes", nombre: "Portugués", profesor: "Pepe",seccion: "T6CN - 01", modalidad: "Presencial", horario: "8:30 am - 12:00 am"),
      Cursos(dia: "Sabado", nombre: "Modela de Datos 1", profesor: "Pepe",seccion: "T5AN - 02", modalidad: "Presencial", horario: "8:30 am - 12:00 am"),
    ],
    4: [
      Cursos(dia: "Lunes", nombre: "Matemáticas", profesor: "Pepe",seccion: "T6DN - 02", modalidad: "Presencial", horario: "8:00 am - 9:30 am"),
      Cursos(dia: "Martes", nombre: "Historia", profesor: "Pepe",seccion: "T5CN - 01", modalidad: "Virtual", horario: "9:30 am - 11:00 am"),
    ],
  };
}