import 'package:flutter/material.dart';

import 'listview_curt.dart';
import 'listview_llarg.dart';


class Continguts2Screen extends StatefulWidget {
  const Continguts2Screen({super.key});


  @override
  State<Continguts2Screen> createState() => _Continguts2ScreenState();
}

class _Continguts2ScreenState extends State<Continguts2Screen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(''),
      ),
      body:
      ListView(
        padding: const EdgeInsets.all(24),
        children: [
          
          ListTile(
            title: Text('ListView curt', style: Theme.of(context).textTheme.headlineSmall,),
            shape: RoundedRectangleBorder(side: BorderSide(color: Theme.of(context).colorScheme.primary, width: 1), borderRadius: BorderRadius.circular(8),),
            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const ListViewExempleScreen()),);},
          ),
          Padding(padding: const EdgeInsets.all(8)),
          ListTile(
            title: Text('ListView llarg', style: Theme.of(context).textTheme.headlineSmall,),
            shape: RoundedRectangleBorder(side: BorderSide(color: Theme.of(context).colorScheme.primary, width: 1), borderRadius: BorderRadius.circular(8),),
            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const ListViewBuilderExempleScreen()),);},
          ),
          Padding(padding: const EdgeInsets.all(8)),

        ],
      ),
    );
  }
}
