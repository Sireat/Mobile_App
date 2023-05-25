import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:your_project_name/presentation/blocs/country/country_bloc.dart';

import '../bloc/country_code_bloc.dart';


class CountryInputField extends StatefulWidget {
  const CountryInputField({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CountryInputFieldState createState() => _CountryInputFieldState();
}

class _CountryInputFieldState extends State<CountryInputField> {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _textEditingController,
      decoration: InputDecoration(
        labelText: 'Enter Country Name',
      ),
      onChanged: (value) {
        final countryName = value.trim();
        if (countryName.isNotEmpty) {
          BlocProvider.of<CountryCodeBloc>(context).add(GetCountryCodeEvent(countryName));
        }
      },
    );
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }
}
