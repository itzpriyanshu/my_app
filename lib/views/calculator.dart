import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorView extends StatefulWidget {
  const CalculatorView({super.key});

  @override
  State<CalculatorView> createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {
  int x = 0;
  int y = 0;
  num z = 0;

  final displayOneCtroller = TextEditingController();
  final displayTwoCtroller = TextEditingController();

  @override
  void initState() {
    super.initState();
    displayOneCtroller.text = x.toString();
    displayTwoCtroller.text = y.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(35.0),
      child: Column(
        children: [
          //display
          CalculatorDisplay(
            hint: "Enter First Number",
            controller: displayOneCtroller,
          ),
          const SizedBox(
            height: 30,
          ),
          CalculatorDisplay(
            hint: "Enter Second Number",
            controller: displayTwoCtroller,
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            z.toString(),
            style: const TextStyle(color: Colors.white, fontSize: 40),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    z = num.tryParse(displayOneCtroller.text)! +
                        num.tryParse(displayTwoCtroller.text)!;
                  });
                },
                child: const Icon(CupertinoIcons.add),
              ),
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    z = num.tryParse(displayOneCtroller.text)! -
                        num.tryParse(displayTwoCtroller.text)!;
                  });
                },
                child: const Icon(CupertinoIcons.minus),
              ),
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    z = num.tryParse(displayOneCtroller.text)! *
                        num.tryParse(displayTwoCtroller.text)!;
                  });
                },
                child: const Icon(CupertinoIcons.multiply),
              ),
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    z = num.tryParse(displayOneCtroller.text)! /
                        num.tryParse(displayTwoCtroller.text)!;
                  });
                },
                child: const Icon(CupertinoIcons.divide),
              ),
            ],
          ),
          const SizedBox(height: 15,),
          FloatingActionButton.extended(onPressed: (){}, label: Text('Clear'),)
          //expand
          //buttons
        ],
      ),
    );
  }
}

class CalculatorDisplay extends StatelessWidget {
  const CalculatorDisplay(
      {super.key, this.hint = "Enter a Number", required this.controller});

  final String? hint;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: const TextStyle(
          color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      keyboardType: TextInputType.number,
      autofocus: false,
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(width: 3, color: Colors.white)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(width: 1, color: Colors.white)),
          hintText: hint,
          hintStyle: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20)),
    );
  }
}
