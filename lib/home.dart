import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffFFD0DB),
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // SvgPicture.asset(
              //   'assets/icons/logo.svg',
              //   width: 32,
              //   height: 32,
              //   colorFilter: ColorFilter.mode(
              //     Color(0xffD56989),
              //     BlendMode.srcIn,
              //   ),
              // ),
              // SizedBox(width: 16),
              Text(
                'Calculator',
                style: GoogleFonts.jersey15(
                  textStyle: TextStyle(fontSize: 50, color: Color(0xffD56989)),
                ),
              ),
            ],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(24)),
          ),
        ),
        body: CalculatorApp(),
      ),
    );
  }
}

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({super.key});

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  String firstNumber = '';
  String secondNumber = '';
  String output = '0';
  String operation = '';

  void onButtonTap(String buttonText) {
    setState(() {
      if (buttonText == "C") {
        firstNumber = '';
        secondNumber = '';
        output = '0';
        operation = '';
      } else if (buttonText == "+" ||
          buttonText == "-" ||
          buttonText == "/" ||
          buttonText == "X") {
        firstNumber = output;
        operation = buttonText;
        output = '';
      } else if (buttonText == ".") {
        if (output.contains(".")) {
          return;
        } else {
          // adiciona decimal
          output += buttonText;
        }
      } else if (buttonText == "=") {
        secondNumber = output;
        if (firstNumber != '' && secondNumber != '' && operation != '') {
          secondNumber = output;
          if (operation == '+') {
            output = (double.parse(firstNumber) + double.parse(secondNumber))
                .toString();
            //operação -> subtração
          } else if (operation == '-') {
            output = (double.parse(firstNumber) - double.parse(secondNumber))
                .toString();
            //operação -> multiplicação
          } else if (operation == 'X') {
            output = (double.parse(firstNumber) * double.parse(secondNumber))
                .toString();
          } //operação -> divisão
          else if (operation == '/') {
            output = (double.parse(firstNumber) / double.parse(secondNumber))
                .toString();
          }
        }
        double result = double.parse(output);

        if (result % 1 == 0) {
          output = result.toInt().toString();
        } else {
          output = output.toString();
          print(output is double);
        }
      } else {
        if (output == '0') {
          output = buttonText;
        } else {
          output += buttonText;
        }
      }

      print(firstNumber);
      print(secondNumber);
      print(output);
      print(operation);
    });
  }

  void calculate() {}
  void clear() {}
  void setOperation(String op) {}

  Widget buttonPressed(String buttonText) {
    return ElevatedButton(
      onPressed: () {
        onButtonTap(buttonText);
      },
      child: Text(
        buttonText,
        style: GoogleFonts.jersey15(
          textStyle: TextStyle(fontSize: 40, color: Colors.black),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 280,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Color(0xffD56989), width: 4),
                ),
                child: Center(
                  child: Text(
                    output,
                    style: GoogleFonts.jersey15(
                      textStyle: TextStyle(fontSize: 50),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(width: 60, height: 60, child: buttonPressed('7')),
              SizedBox(width: 60, height: 60, child: buttonPressed('8')),
              SizedBox(width: 60, height: 60, child: buttonPressed('9')),
              SizedBox(width: 60, height: 60, child: buttonPressed('-')),
            ],
          ),

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(width: 60, height: 60, child: buttonPressed('4')),
              SizedBox(width: 60, height: 60, child: buttonPressed('5')),
              SizedBox(width: 60, height: 60, child: buttonPressed('6')),
              SizedBox(width: 60, height: 60, child: buttonPressed('+')),
            ],
          ),

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(width: 60, height: 60, child: buttonPressed('1')),
              SizedBox(width: 60, height: 60, child: buttonPressed('2')),
              SizedBox(width: 60, height: 60, child: buttonPressed('3')),
              SizedBox(width: 60, height: 60, child: buttonPressed('X')),
            ],
          ),

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(width: 60, height: 60, child: buttonPressed('0')),
              SizedBox(width: 60, height: 60, child: buttonPressed('.')),
              SizedBox(width: 60, height: 60, child: buttonPressed('=')),
              SizedBox(width: 60, height: 60, child: buttonPressed('C')),
            ],
          ),
        ],
      ),
    );
  }
}
