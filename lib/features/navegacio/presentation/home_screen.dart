import 'package:flutter/material.dart';

class HomeMenuLateralScreen extends StatelessWidget {
  const HomeMenuLateralScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home del menú lateral'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      
      body: Text('Home'),
    );
  }

  
}