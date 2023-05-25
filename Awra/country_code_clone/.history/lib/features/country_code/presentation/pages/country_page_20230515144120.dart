import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/usecases/get_country_code_usecase.dart';
import '../bloc/country_code_bloc.dart';
import '../widgets/country_code_display.dart';
import '../widgets/country_input_field.dart';

class CountryPage extends StatelessWidget {
  const CountryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Country Page'),
      ),
      body: BlocProvider(
        create: (context) => CountryBloc(getCountryCode: countryCod
        ),
        child: Column(
          children: [
            const CountryInputField(),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                context.read<CountryBloc>().add(GetCountryCode());
              },
              child: const Text('Get Country Code'),
            ),
            const SizedBox(height: 16),
            const CountryCodeDisplay(),
          ],
        ),
      ),
    );
  }
}
