import 'package:flutter/material.dart';

import 'barra_navegacio_screen.dart';
import 'menu_lateral_screen.dart';
import 'navigatorpop_screen.dart';


class NavigatorScreen extends StatefulWidget {
  const NavigatorScreen({super.key});


  @override
  State<NavigatorScreen> createState() => _NavigatorScreenState();
}

class _NavigatorScreenState extends State<NavigatorScreen> {

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
          
          Text("Navigator.push", style: Theme.of(context).textTheme.headlineSmall,),
          Padding(padding: const EdgeInsets.all(8)),
          Text("Per anar a una altra pantalla (afegeix la pantalla a la pila)", style: Theme.of(context).textTheme.bodyLarge,),
          Padding(padding: const EdgeInsets.all(8)),
          FilledButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const NavigatorPopScreen()),);
            },
            child: Text('Anar a la pantalla següent'),
          ),
          Padding(padding: const EdgeInsets.all(16)),

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
          Padding(padding: const EdgeInsets.all(16)),

          Text("Navigator.pushReplacement", style: Theme.of(context).textTheme.headlineSmall,),
          Padding(padding: const EdgeInsets.all(8)),
          Text("Per anar a una altra pantalla (reemplaça la pantalla actual de la pila). \nÚtil per pantalles tipus 'loading....'", style: Theme.of(context).textTheme.bodyLarge,),
          Padding(padding: const EdgeInsets.all(8)),
           FilledButton(
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const NavigatorPopScreen()),);
            },
            child: Text('Anar a la pantalla següent'),
          ),
          Padding(padding: const EdgeInsets.all(16)),
 
        ],
      ),
    );
  }
}
