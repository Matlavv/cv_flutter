import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mon Info'),
      ),
      body: const Center(
        child: Text('Contenu de la page Info'),
      ),
    );
  }
}
