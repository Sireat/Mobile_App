import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/country_code_bloc.dart';
import '../bloc/country_code_state.dart';


class CountryCodeDisplay extends StatelessWidget {
  const CountryCodeDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CountryCodeBloc, CountryCodeState>(
      builder: (context, state) {
        if (state is CountryCodeLoaded) {
          return Text('Country Code: ${state.countryCode}');
        } else if (state is CountryCodeError) {
          return Text('Error: ${state.message}');
        }
        return Container();
      },
    );
  }
}

