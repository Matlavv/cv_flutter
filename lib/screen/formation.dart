import 'package:flutter/material.dart';

class Formation extends StatelessWidget {
  const Formation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mon Formation'),
      ),
      body: const Center(
        child: Text('Contenu de la page Formation'),
      ),
    );
  }
}
