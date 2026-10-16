import 'package:flutter/material.dart';

class LayoutExempleScreen extends StatelessWidget {
  const LayoutExempleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exemple de Layouts'),
      ),
      body: Align(
        alignment: Alignment.topCenter, 
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            elevation: 4, 
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min, 
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Usuari',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                
                  const Row(
                    children: [
                      Icon(Icons.person, color: Colors.deepPurple),
                      SizedBox(width: 8),
                      Text(
                        'Nom: Joan Pera',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),

                  const Row(
                    children: [
                      Icon(Icons.email, color: Colors.deepPurple),
                      SizedBox(width: 8),
                      Text(
                        'Correu: joan@exemple.com',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

