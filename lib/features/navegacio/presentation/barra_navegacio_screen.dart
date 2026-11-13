import 'package:flutter/material.dart';

import '../../llistats/presentation/listview_llarg.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int _index = 0;

  static const _titles = ['Inici', 'Llistat', 'Perfil'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bottom bar · ${_titles[_index]}'), automaticallyImplyLeading: false, backgroundColor: Theme.of(context).colorScheme.inversePrimary,),
      body: IndexedStack(
        index: _index,
        children: [
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.home_outlined,
                  size: 48,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(height: 16),
                Text('Elements importants: ', style: Theme.of(context).textTheme.headlineSmall),
                const SizedBox(height: 16),
                Text('body: IndexedStack..... ', style: Theme.of(context).textTheme.headlineSmall),
                const SizedBox(height: 16),
                Text('bottomNavigationBar: NavigationBar.... ', style: Theme.of(context).textTheme.headlineSmall),
              ],
            ),
          ),
          ListViewBuilderExempleScreen(veureAppBar: false), // Mostrem la llista llarga sense AppBar
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  radius: 36,
                  backgroundColor: Theme.of(
                    context,
                  ).colorScheme.primaryContainer,
                  foregroundColor: Theme.of(
                    context,
                  ).colorScheme.onPrimaryContainer,
                  child: const Icon(Icons.settings, size: 40),
                ),
                const SizedBox(height: 16),
                Text(
                  'Preferències de l\'usuari',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _index,
        onDestinationSelected: (value) => setState(() => _index = value),
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'Inici',
          ),
          NavigationDestination(
            icon: Icon(Icons.search),
            selectedIcon: Icon(Icons.search),
            label: 'Cerca',
          ),
          NavigationDestination(
            icon: Icon(Icons.settings_outlined),
            selectedIcon: Icon(Icons.settings),
            label: 'Config',
          ),
        ],
      ),
    );
  }
}
