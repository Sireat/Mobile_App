import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/country_code_bloc.dart';
import '../bloc/country_code_event.dart';
import '../bloc/country_code_state.dart';

class CountryPage extends StatelessWidget {
  final TextEditingController _textEditingController = TextEditingController();

  CountryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Country Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _textEditingController,
              decoration: const InputDecoration(
                labelText: 'Enter Country Name',
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                final countryName = _textEditingController.text;
                if (countryName.isNotEmpty) {
                  BlocProvider.of<CountryCodeBloc>(context).add(GetCountryCodeEvent(countryName));
                }
              },
              child: const Text('Get Country Code'),
            ),
            const SizedBox(height: 16.0),
            BlocBuilder<CountryCodeBloc, CountryCodeState>(
              builder: (context, state) {
                if (state is CountryCodeLoading) {
                  return const CircularProgressIndicator();
                } else if (state is CountryCodeLoaded) {
                  return Text('Country Code: ${state.countryCode.code}');
                } else if (state is CountryCodeError) {
                  return Text('Error: ${state.message}');
                }
                return CountryCode();
              },
            ),
          ],
        ),
      ),
    );
  }
}
