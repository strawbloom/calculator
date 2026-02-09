import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
              SvgPicture.asset(
                'assets/icons/logo.svg',
                width: 32,
                height: 32,
                colorFilter: ColorFilter.mode(
                  Color(0xffD56989),
                  BlendMode.srcIn,
                ),
              ),
              SizedBox(width: 16),
              Text(
                'Calculator',
                style: GoogleFonts.jersey15(
                  textStyle: TextStyle(fontSize: 40, color: Color(0xffD56989)),
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
  double firstNumber = 0;
  double secondNumber = 0;
  var input = '';
  var output = '';
  var operation = '';
  var hideInput = false;
  var outputSize = 38.0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Color(0xffFFD0DB),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 280,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Color(0xffD56989), width: 4),
                  ),
                  child: Center(
                    child: Text(
                      input,
                      style: GoogleFonts.jersey15(
                        textStyle: TextStyle(fontSize: 50),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      input += '7';
                    });
                  },
                  child: Text(
                    '7',
                    style: GoogleFonts.jersey15(
                      textStyle: TextStyle(fontSize: 40, color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(width: 15),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      input += '8';
                    });
                  },
                  child: Text(
                    '8',
                    style: GoogleFonts.jersey15(
                      textStyle: TextStyle(fontSize: 40, color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(width: 15),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      input += '9';
                    });
                  },
                  child: Text(
                    '9',
                    style: GoogleFonts.jersey15(
                      textStyle: TextStyle(fontSize: 40, color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      input += '4';
                    });
                  },
                  child: Text(
                    '4',
                    style: GoogleFonts.jersey15(
                      textStyle: TextStyle(fontSize: 40, color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(width: 15),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      input += '5';
                    });
                  },
                  child: Text(
                    '5',
                    style: GoogleFonts.jersey15(
                      textStyle: TextStyle(fontSize: 40, color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(width: 15),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      input += '6';
                    });
                  },
                  child: Text(
                    '6',
                    style: GoogleFonts.jersey15(
                      textStyle: TextStyle(fontSize: 40, color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      input += '1';
                    });
                  },
                  child: Text(
                    '1',
                    style: GoogleFonts.jersey15(
                      textStyle: TextStyle(fontSize: 40, color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(width: 15),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      input += '2';
                    });
                  },
                  child: Text(
                    '2',
                    style: GoogleFonts.jersey15(
                      textStyle: TextStyle(fontSize: 40, color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(width: 15),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      input += '3';
                    });
                  },
                  child: Text(
                    '3',
                    style: GoogleFonts.jersey15(
                      textStyle: TextStyle(fontSize: 40, color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      input += '0';
                    });
                  },
                  child: Text(
                    '0',
                    style: GoogleFonts.jersey15(
                      textStyle: TextStyle(fontSize: 40, color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(width: 15),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (input.isNotEmpty) {
                        secondNumber = double.parse(input);
                        output = (firstNumber + secondNumber).toString();
                        input = output;
                        hideInput = true;
                      }
                      print(input);
                      print(firstNumber);
                      print(secondNumber);
                      print(operation);
                    });
                  },
                  child: Text(
                    '=',
                    style: GoogleFonts.jersey15(
                      textStyle: TextStyle(fontSize: 40, color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(width: 15),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (input.isNotEmpty) {
                        // transforma o input em double
                        firstNumber = double.parse(input);
                        // reseta o input
                        input = '0';
                        // passa a operação do botão
                        operation = '+';
                      }
                      print(input);
                      print(firstNumber);
                      print(operation);
                    });
                  },
                  child: Text(
                    '+',
                    style: GoogleFonts.jersey15(
                      textStyle: TextStyle(fontSize: 40, color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
