import 'package:flutter/material.dart';

import 'barra_navegacio_screen.dart';
import 'menu_lateral_screen.dart';
import 'navigator_screen.dart';

class ContingutsNavegacioScreen extends StatefulWidget {
  const ContingutsNavegacioScreen({super.key});


  @override
  State<ContingutsNavegacioScreen> createState() => _ContingutsNavegacioScreenState();
}

class _ContingutsNavegacioScreenState extends State<ContingutsNavegacioScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Widgets de navegació'),
      ),
      body:
      ListView(
        padding: const EdgeInsets.all(24),
        children: [
          
          ListTile(
            title: Text('Barra Navegació Inferior', style: Theme.of(context).textTheme.headlineSmall,),
            shape: RoundedRectangleBorder(side: BorderSide(color: Theme.of(context).colorScheme.primary, width: 1), borderRadius: BorderRadius.circular(8),),
            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const BottomNavScreen()),);},
          ),
          Padding(padding: const EdgeInsets.all(8)),
          ListTile(
            title: Text('Menú Navegació lateral)', style: Theme.of(context).textTheme.headlineSmall,),
            shape: RoundedRectangleBorder(side: BorderSide(color: Theme.of(context).colorScheme.primary, width: 1), borderRadius: BorderRadius.circular(8),),
            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const SideNavScreen()),);},
          ),
          Padding(padding: const EdgeInsets.all(8)),
          ListTile(
            title: Text('Navigator (push, pop, pushReplacement...)', style: Theme.of(context).textTheme.headlineSmall,),
            shape: RoundedRectangleBorder(side: BorderSide(color: Theme.of(context).colorScheme.primary, width: 1), borderRadius: BorderRadius.circular(8),),
            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const NavigatorScreen()),);},
          ),
          Padding(padding: const EdgeInsets.all(8)),

        ],
      ),
    );
  }
}
