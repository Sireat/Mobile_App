import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'features/country_code/presentation/bloc/country_code_bloc.dart';
import 'features/country_code/presentation/pages/country_page.dart';
import 'injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Country Code App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  CountryPage(),
    )
  }
}