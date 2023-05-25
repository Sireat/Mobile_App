import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'features/country_code/presentation/bloc/country_code_bloc.dart';
import 'features/country_code/presentation/pages/country_page.dart';
import 'injection_container.dart' as di;
import 'injection_container.dart';

void main() {
  configureInjection();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Clean Architecture Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BlocProvider(
        create: (_) => GetIt.instance<CountryBloc>(),
        child: HomePage(),
      ),
    );
  }
}
