import 'package:flutter/material.dart';

import 'layouts1_widget.dart';


class Continguts3Screen extends StatefulWidget {
  const Continguts3Screen({super.key});


  @override
  State<Continguts3Screen> createState() => _Continguts3ScreenState();
}

class _Continguts3ScreenState extends State<Continguts3Screen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Widgets de llistes'),
      ),
      body:
      ListView(
        padding: const EdgeInsets.all(24),
        children: [
          
          ListTile(
            title: Text('Column, Row, Padding, Card i Text', style: Theme.of(context).textTheme.headlineSmall,),
            shape: RoundedRectangleBorder(side: BorderSide(color: Theme.of(context).colorScheme.primary, width: 1), borderRadius: BorderRadius.circular(8),),
            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const LayoutExempleScreen()),);},
          ),
          Padding(padding: const EdgeInsets.all(8)),

        ],
      ),
    );
  }
}
