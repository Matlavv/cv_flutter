import 'package:flutter/material.dart';

import 'screen/device.dart';

void main() => runApp(const MonCVApp());

class MonCVApp extends StatelessWidget {
  const MonCVApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Mon CV App',
      home: Device(),
    );
  }
}
