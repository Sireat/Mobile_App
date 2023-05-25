import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/country_code_bloc.dart';
import '../bloc/country_code_state.dart';

class CountryCodeDisplay extends StatelessWidget {
  const CountryCodeDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CountryBloc, CountryState>(
      builder: (context, state) {
        if (state is CountryInitial) {
          return const SizedBox.shrink();
        } else if (state is CountryLoading) {
          return const CircularProgressIndicator();
        } else if (state is CountryLoaded) {
          return Text(state.country.toEntity().code);
        } else if (state is CountryError) {
          return Text(state.message);
        }
        return const SizedBox.shrink();
      },
    );
  }
}
