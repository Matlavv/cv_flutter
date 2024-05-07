import 'package:flutter/material.dart';

import 'common.dart';

class Competence extends StatelessWidget {
  const Competence({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar("Mes Competences", context),
      body: const Center(
        child: Text('Contenu de la page Competences'),
      ),
    );
  }
}
