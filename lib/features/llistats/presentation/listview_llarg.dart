import 'package:flutter/material.dart';

class ListViewBuilderExempleScreen extends StatelessWidget {
  const ListViewBuilderExempleScreen({super.key, this.veureAppBar = true});

  final bool veureAppBar; // Variable per controlar si es mostra l'AppBar

  PreferredSizeWidget? _mostrarAppBar(BuildContext context) {
    if (veureAppBar) {
      return AppBar(
        title: const Text('Exemple ListView.builder'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      );
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    // Simulem una llista de 100 elements
    final List<String> opcions = List.generate(
      100, 
      (index) => 'Opció número ${index + 1}',
    );

    return Scaffold(
      appBar: _mostrarAppBar(context),
      body: ListView.builder(
        itemCount: opcions.length, // Especifica el nombre total d'elements
        itemBuilder: (BuildContext context, int index) {
          // Aquest mètode només es crida quan l'element és visible a la pantalla
          return ListTile(
            leading: CircleAvatar(
              child: Text('${index + 1}'),
            ),
            title: Text(opcions[index]),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              // Acció en fer clic a un element
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('S\'ha seleccionat: ${opcions[index]}')),
              );
            },
          );
        },
      ),
    );
  }

  
}