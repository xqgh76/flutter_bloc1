import 'package:flutter/material.dart';

import 'features/conceptes_previs/presentation/constructor_params.dart';
import 'features/conceptes_previs/presentation/variables_tipus.dart';
import 'features/conceptes_previs/presentation/declaracio_variables.dart';
import 'features/conceptes_previs/presentation/null_safety.dart';
import 'features/conceptes_previs/presentation/stateful_stateless.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter - Conceptes',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Conceptes de llenguatge Dart i Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body:
      ListView(
        padding: const EdgeInsets.all(24),
        children: [
          ElevatedButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const PassDataScreen()),);}, child: const Text('Elevated')),
          FilledButton(onPressed:  () {}, child: const Text('Filled')),
          FilledButton.tonal(
            onPressed:  () {},
            child: const Text('Filled Tonal'),
          ),
          OutlinedButton(onPressed:  () {}, child: const Text('Outlined')),
          TextButton(onPressed:  () {}, child: const Text('Text')),
                    Padding(padding: const EdgeInsets.all(8)),
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
