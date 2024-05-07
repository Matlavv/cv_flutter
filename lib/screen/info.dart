import 'package:flutter/material.dart';

import 'common.dart';

class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar("Mes info", context),
      body: const Center(
        child: Text('Contenu de la page info'),
      ),
    );
  }
}
