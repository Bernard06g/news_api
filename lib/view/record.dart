import 'package:flutter/material.dart';

class UserRecord extends StatelessWidget {
  const UserRecord({super.key});

  @override
  Widget build(BuildContext context) {
    // Datos de prueba para el historial de vistos
    final List<Map<String, String>> viewedItems = [
      {'title': 'Video 1', 'description': 'Descripción del Video 1'},
      {'title': 'Artículo 1', 'description': 'Descripción del Artículo 1'},
      {'title': 'Video 2', 'description': 'Descripción del Video 2'},
      {'title': 'Artículo 2', 'description': 'Descripción del Artículo 2'},
      {'title': 'Video 3', 'description': 'Descripción del Video 3'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Historial de Vistos'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: viewedItems.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 5,
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: ListTile(
                title: Text(
                  viewedItems[index]['title']!,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(viewedItems[index]['description']!),
                onTap: () {
                  // Acción al pulsar un elemento de la lista
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content:
                          Text('Seleccionaste: ${viewedItems[index]['title']}'),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
