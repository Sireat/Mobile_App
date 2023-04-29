import 'package:flutter/material.dart';
import 'package:sw/one.dart';

void main() {
  runApp(SwApp());
}

class SwApp extends StatelessWidget {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: StateFullCounter()

        // Scaffold(
        //   appBar: AppBar(title: const Text("Software 4th"), centerTitle: true),
        //   body: Center(
        //     child: Column(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       crossAxisAlignment: CrossAxisAlignment.center,
        //       children: [
        //         const Text(
        //           "Counting",
        //           style: TextStyle(fontSize: 30),
        //         ),
        //         Text(
        //           counter.toString(),
        //           style: const TextStyle(fontSize: 30),
        //         )
        //       ],
        //     ),
        //   ),
        //   floatingActionButton: FloatingActionButton(
        //       child: const Icon(Icons.add),
        //       onPressed: () {
        //         counter++;
        //         log(counter.toString());
        //       }),
        // ),

        );
  }
}
