import 'package:flutter/material.dart';

import 'features/conceptes_previs/presentation/continguts1.dart';
import 'features/llistats/presentation/continguts2.dart';
import 'features/layouts/presentation/continguts3.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter - Dart',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Continguts'),
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
          
          ListTile(
            title: Text('Llenguatge', style: Theme.of(context).textTheme.headlineSmall,),
            shape: RoundedRectangleBorder(side: BorderSide(color: Theme.of(context).colorScheme.primary, width: 1), borderRadius: BorderRadius.circular(8),),
            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const Continguts1Screen()),);},
          ),
          Padding(padding: const EdgeInsets.all(8)),
          ListTile(
            title: Text('Llistats', style: Theme.of(context).textTheme.headlineSmall,),
            shape: RoundedRectangleBorder(side: BorderSide(color: Theme.of(context).colorScheme.primary, width: 1), borderRadius: BorderRadius.circular(8),),
            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const Continguts2Screen()),);},
          ),
          Padding(padding: const EdgeInsets.all(8)),
          ListTile(
            title: Text('Layouts', style: Theme.of(context).textTheme.headlineSmall,),
            shape: RoundedRectangleBorder(side: BorderSide(color: Theme.of(context).colorScheme.primary, width: 1), borderRadius: BorderRadius.circular(8),),
            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const Continguts3Screen()),);},
          ),
          Padding(padding: const EdgeInsets.all(8)),

        ],
      ),
    );
  }
}
