import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/usecases/get_country_code_usecase.dart';
import '../bloc/country_code_bloc.dart';
import '../widgets/country_code_display.dart';
import '../widgets/country_input_field.dart';


class CountryPage extends StatelessWidget {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Country Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _textEditingController,
              decoration: InputDecoration(
                labelText: 'Enter Country Name',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                final countryName = _textEditingController.text;
                if (countryName.isNotEmpty) {
                  BlocProvider.of<CountryCodeBloc>(context).add(GetCountryCodeEvent(countryName));
                }
              },
              child: Text('Get Country Code'),
            ),
            SizedBox(height: 16.0),
            BlocBuilder<CountryCodeBloc, CountryCodeState>(
              builder: (context, state) {
                if (state is CountryCodeLoading) {
                  return CircularProgressIndicator();
                } else if (state is CountryCodeLoaded) {
                  return Text('Country Code: ${state.countryCode.code}');
                } else if (state is CountryCodeError) {
                  return Text('Error: ${state.message}');
                }
                return Container();
              },
            ),
          ],
        ),
      ),
    );
  }
}
