import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/presentation/blocs/country_bloc.dart';
import 'package:flutter_clean_architecture/presentation/pages/home_page.dart';
import 'package:get_it/get_it.dart';

import 'features/country_code/presentation/bloc/country_code_bloc.dart';
import 'injection_container.dart';

void main() {
  configureInjection();
  runApp(const MyApp());
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
