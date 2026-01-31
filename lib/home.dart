import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // não mostra o banner de debug
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink.shade50,
          title: Row(
            // centraliza o titulo
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Calculator',
                style: GoogleFonts.jersey15(
                  textStyle: TextStyle(
                    fontSize: 40,
                    color: Colors.pink.shade400,
                  ),
                ),
              ),
              // espaçamento entre o titulo e o icone
              SizedBox(width: 20),
            ],
          ),
        ),
        // redireciona pro body da calculadora
        body: CalculatorBody(),
      ),
    );
  }
}

// inicia o body da calculadora
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
              ImageIcon(AssetImage('assets/icons/logo.png'), size: 10),
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
