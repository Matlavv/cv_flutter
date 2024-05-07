import 'package:flutter/material.dart';

class Competence extends StatelessWidget {
  const Competence({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mon Competence'),
      ),
      body: const Center(
        child: Text('Contenu de la page Competence'),
      ),
    );
  }
}
