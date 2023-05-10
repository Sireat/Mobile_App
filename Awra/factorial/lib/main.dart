import 'package:factorial/presentation/pages/%20home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Factorial App',
      home: HomePage(),
    );
  }
}
