import 'package:flutter/material.dart';

import 'barra_navegacio_screen.dart';
import 'menu_lateral_screen.dart';


class NavigatorPopScreen extends StatefulWidget {
  const NavigatorPopScreen({super.key});


  @override
  State<NavigatorPopScreen> createState() => _NavigatorPopScreenState();
}

class _NavigatorPopScreenState extends State<NavigatorPopScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Navigator'),
      ),
      body:
      ListView(
        padding: const EdgeInsets.all(24),
        children: [
          
          Text("Navigator.pop", style: Theme.of(context).textTheme.headlineSmall,),
          Padding(padding: const EdgeInsets.all(8)),
          Text("Per tornar a la pantalla anterior (treu la pantalla de la pila)", style: Theme.of(context).textTheme.bodyLarge,),
          Padding(padding: const EdgeInsets.all(8)),
          FilledButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Tornar a la pantalla anterior'),
          ),
 
        ],
      ),
    );
  }
}
