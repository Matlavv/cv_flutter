import 'package:flutter/material.dart';

class Experience extends StatelessWidget {
  const Experience({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mon experience'),
      ),
      body: const Center(
        child: Text('Contenu de la page Profil'),
      ),
    );
  }
}