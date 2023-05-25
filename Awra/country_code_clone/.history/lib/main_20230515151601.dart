import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:country_code_clone/injection_container.dart';

import 'features/country/presentation/bloc/country_code_bloc.dart';
import 'features/country/presentation/pages/country_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Country Code Clone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (_) => sl<CountryCodeBloc>(),
        child: CountryPage(),
      ),
    );
  }
}
