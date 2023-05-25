import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:your_project_name/presentation/blocs/country/country_bloc.dart';

import '../bloc/country_code_bloc.dart';

class CountryInputField extends StatelessWidget {
  const CountryInputField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextFormField(
        decoration: const InputDecoration(
          hintText: 'Enter country name',
        ),
        onChanged: (value) {
          context.read<CountryBloc>().add(CountryNameChanged(value));
        },
      ),
    );
  }
}
