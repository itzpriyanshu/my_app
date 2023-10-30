import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
          child: Container(
        color: Color.fromARGB(255, 43, 1, 169),
        child: Center(
          child: Text(
            "Hello Priyanshu",
            style: TextStyle(
                fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      )),
    );
  }
}
