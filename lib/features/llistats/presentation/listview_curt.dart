import 'package:flutter/material.dart';

class ListViewExempleScreen extends StatelessWidget {
  const ListViewExempleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exemple ListView'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          ListTile(
            leading: Icon(Icons.star),
            title: Text('Element 1'),
            subtitle: Text('Descripció del primer element'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Element 2'),
            subtitle: Text('Descripció del segon element'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Element 3'),
            subtitle: Text('Descripció del tercer element'),
          ),
        ],
      ),
    );
  }
}