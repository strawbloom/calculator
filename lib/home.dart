import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Calculator',
                    style: GoogleFonts.jersey15(
                      textStyle: TextStyle(fontSize: 40),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        // direciona pro body da calculadora
        body: CalculatorBody(),
      ),
    );
  }
}

// body da calculadora
class CalculatorBody extends StatefulWidget {
  const CalculatorBody({super.key});

  @override
  State<CalculatorBody> createState() => _CalculatorBodyState();
}

class _CalculatorBodyState extends State<CalculatorBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    'C',
                    style: GoogleFonts.jersey15(
                      textStyle: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    'E',
                    style: GoogleFonts.jersey15(
                      textStyle: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    '=',
                    style: GoogleFonts.jersey15(
                      textStyle: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(child: Text('1')),
              Expanded(child: Text('2')),
              Expanded(child: Text('3')),
            ],
          ),
        ],
      ),
    );
  }
}
