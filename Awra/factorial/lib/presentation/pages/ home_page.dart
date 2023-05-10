// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:factorial/domain/use_cases/calculate_factorial_use_case.dart';

class HomePage extends StatefulWidget {
  final CalculateFactorialUseCase useCase;

    // ignore: prefer_const_constructors_in_immutables
    HomePage({super.key,  required this.useCase});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _numberController = TextEditingController();
  int? _result;

  @override
  void dispose() {
    _numberController.dispose();
    super.dispose();
  }

  void _calculateFactorial() async {
    final number = int.tryParse(_numberController.text) ?? 0;
    final result = await widget.useCase.execute(number);
    setState(() {
      _result = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Factorial Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _numberController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Enter a number',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _calculateFactorial,
              child: const Text('Calculate Factorial'),
            ),
            const SizedBox(height: 16),
            if (_result != null)
              Text(
                'Factorial of ${_numberController.text}
  }
}  