class GenerosMusicales {
  // Lista privada para almacenar los géneros favoritos.
  final Set<String> _generosFavoritos = {};

  // Método para agregar un género.
  void agregarGenero(String genero) {
    // Verifica si ya hay 5 géneros en el set.
    if (_generosFavoritos.length >= 5) {
      print("No puedes añadir más de 5 géneros favoritos.");
      return;
    }

    // Intenta agregar el género al set.
    final agregar = _generosFavoritos.add(genero);

    if (agregar) {
    print("Género '$genero' añadido a tu lista de favoritos.");
    } else {
    print("El género '$genero' ya está en tu lista de favoritos.");
    }
  }

  // Método para mostrar la lista actual de géneros favoritos.
  void mostrarGeneros() {
    if (_generosFavoritos.isEmpty) {
      print("No tienes géneros favoritos en tu lista.");
    } else {
      print("Tus géneros favoritos son: ${_generosFavoritos.join(', ')}");
    }
  }
}

void main() {
  // Crear una instancia de la clase.
  final gestionGeneros = GenerosMusicales();

  // Probar la lógica.
  gestionGeneros.agregarGenero("Rock");
  gestionGeneros.agregarGenero("Jazz");
  gestionGeneros.agregarGenero("Pop");
  gestionGeneros.agregarGenero("Blues");
  gestionGeneros.agregarGenero("Rap");

  // Intentar agregar un género duplicado.
  gestionGeneros.agregarGenero("Rock");

  // Intentar agregar un sexto género.
  gestionGeneros.agregarGenero("Reggaeton");

  // Mostrar los géneros favoritos.
  gestionGeneros.mostrarGeneros();
}