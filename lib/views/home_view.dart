import 'package:flutter/material.dart';
import 'package:my_app/views/calculator.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        bottom: false,
        child: Material(
            child: Container(
          color: const Color.fromARGB(255, 0, 0, 0),
          child: const CalculatorView()
        )),
      ),
    );
  }
}
