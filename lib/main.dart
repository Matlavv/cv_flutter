import 'package:flutter/material.dart';
import 'screen/device.dart';

void main() => runApp(MonCVApp());

class MonCVApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mon CV App',
      home: Device(),
    );
  }
}
