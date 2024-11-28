class GestionNotas {
  // Mapa para almacenar los nombres y notas de los estudiantes.
  final Map<String, double> _notas = {};

  // Método para agregar o actualizar la nota de un estudiante.
  void agregarNota(String nombre, double nota) {
    if (nota < 0 || nota > 10) {
      print("La nota debe estar entre 0 y 10.");
      return;
    }

    _notas[nombre] = nota;
    print("Nota de $nombre agregada/actualizada: $nota.");
  }

  // Método para mostrar las notas de todos los estudiantes.
  void mostrarNotas() {
    if (_notas.isEmpty) {
      print("No hay notas registradas.");
    } else {
      print("Lista de notas:");
      _notas.forEach((nombre, nota) {
        print("- $nombre: $nota");
      });
    }
  }

  // Método para obtener la nota de un estudiante específico.
  void obtenerNota(String nombre) {
    if (_notas.containsKey(nombre)) {
      print("La nota de $nombre es: ${_notas[nombre]}");
    } else {
      print("No hay nota registrada para $nombre.");
    }
  }
}

void main() {
  // Crear una instancia de la clase.
  final gestionNotas = GestionNotas();

  // Agregar notas.
  gestionNotas.agregarNota("Juan", 8.5);
  gestionNotas.agregarNota("María", 9.3);
  gestionNotas.agregarNota("Luis", 7.8);

  // Mostrar todas las notas.
  gestionNotas.mostrarNotas();

  // Consultar la nota de un estudiante específico.
  gestionNotas.obtenerNota("María");
  gestionNotas.obtenerNota("Pedro");
}