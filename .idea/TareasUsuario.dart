class ListaDeTareas {
  // Lista para almacenar las tareas.
  final List<String> _tareas = [];

  // Método para agregar una nueva tarea.
  void agregarTarea(String tarea) {
    _tareas.add(tarea);
    print("Tarea '$tarea' añadida a la lista.");
  }

  // Método para mostrar las tareas en el orden en que fueron agregadas.
  void mostrarTareas() {
    if (_tareas.isEmpty) {
      print("No tienes tareas pendientes.");
    } else {
      print("Lista de tareas:");
      for (int i = 0; i < _tareas.length; i++) {
        print("${i + 1}. ${_tareas[i]}");
      }
    }
  }
}

void main() {
  // Crear una instancia de la clase.
  final tareas = ListaDeTareas();

  // Probar la lógica.
  tareas.agregarTarea("Estudiar para el examen de Luis.");
  tareas.agregarTarea("Ir al supermercado.");
  tareas.agregarTarea("Jugar a la play.");

  // Mostrar la lista de tareas.
  tareas.mostrarTareas();
}