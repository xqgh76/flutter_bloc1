import 'package:flutter/material.dart';

import 'constructor_params.dart';
import 'variables_tipus.dart';
import 'declaracio_variables.dart';
import 'null_safety.dart';
import 'stateful_stateless.dart';


class Continguts1Screen extends StatefulWidget {
  const Continguts1Screen({super.key});


  @override
  State<Continguts1Screen> createState() => _Continguts1ScreenState();
}

class _Continguts1ScreenState extends State<Continguts1Screen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Conceptes de llenguatge Dart i Flutter'),
      ),
      body:
      ListView(
        padding: const EdgeInsets.all(24),
        children: [
          
          ListTile(
            title: Text('Constructor i paràmetres', style: Theme.of(context).textTheme.headlineSmall,),
            shape: RoundedRectangleBorder(side: BorderSide(color: Theme.of(context).colorScheme.primary, width: 1), borderRadius: BorderRadius.circular(8),),
            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const PassDataScreen()),);},
          ),
          Padding(padding: const EdgeInsets.all(8)),
          ListTile(
            title: Text('Variables i tipus bàsics', style: Theme.of(context).textTheme.headlineSmall,),
            shape: RoundedRectangleBorder(side: BorderSide(color: Theme.of(context).colorScheme.primary, width: 1), borderRadius: BorderRadius.circular(8),),
            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const VariablesScreen()),);},
          ),
          Padding(padding: const EdgeInsets.all(8)),
          ListTile(
            title: Text('Declaració de variables', style: Theme.of(context).textTheme.headlineSmall,),
            shape: RoundedRectangleBorder(side: BorderSide(color: Theme.of(context).colorScheme.primary, width: 1), borderRadius: BorderRadius.circular(8),),
            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const VarFinalScreen()),);},
          ),
          Padding(padding: const EdgeInsets.all(8)),
          ListTile(
            title: Text('Null safety', style: Theme.of(context).textTheme.headlineSmall,),
            shape: RoundedRectangleBorder(side: BorderSide(color: Theme.of(context).colorScheme.primary, width: 1), borderRadius: BorderRadius.circular(8),),
            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const NullSafetyScreen()),);},
          ),
          Padding(padding: const EdgeInsets.all(8)),
          ListTile(
            title: Text('StatefulWidget i StatelessWidget', style: Theme.of(context).textTheme.headlineSmall,),
            shape: RoundedRectangleBorder(side: BorderSide(color: Theme.of(context).colorScheme.primary, width: 1), borderRadius: BorderRadius.circular(8),),
            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const StatefulStatelessScreen(title: 'StatefulWidget i StatelessWidget')),);},
          ),


        ],
      ),
    );
  }
}
