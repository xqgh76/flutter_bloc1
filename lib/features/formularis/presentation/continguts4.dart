import 'package:flutter/material.dart';

import 'formulari1_screen.dart';
import 'shared_preferences_screen.dart';

class Continguts4Screen extends StatefulWidget {
  const Continguts4Screen({super.key});


  @override
  State<Continguts4Screen> createState() => _Continguts4ScreenState();
}

class _Continguts4ScreenState extends State<Continguts4Screen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Formularis i sharedPreferences', style: Theme.of(context).textTheme.headlineSmall,),
      ),
      body:
      ListView(
        padding: const EdgeInsets.all(24),
        children: [
          
          ListTile(
            title: Text('Elements de formulari', style: Theme.of(context).textTheme.headlineSmall,),
            shape: RoundedRectangleBorder(side: BorderSide(color: Theme.of(context).colorScheme.primary, width: 1), borderRadius: BorderRadius.circular(8),),
            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const FormValidationScreen()),);},
          ),
          Padding(padding: const EdgeInsets.all(8)),
          ListTile(
            title: Text('SharedPreferences', style: Theme.of(context).textTheme.headlineSmall,),
            shape: RoundedRectangleBorder(side: BorderSide(color: Theme.of(context).colorScheme.primary, width: 1), borderRadius: BorderRadius.circular(8),),
            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const SharedPreferencesDemoScreen()),);},
          ),
          Padding(padding: const EdgeInsets.all(8)),


        ],
      ),
    );
  }
}
