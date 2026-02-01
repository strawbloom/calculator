import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // não mostra o banner de debug
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffFFD0DB),
        appBar: AppBar(
          title: Row(
            // centraliza o titulo
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
              // espaçamento entre o titulo e o icone
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
  int number1 = 0;
  int number2 = 0;
  int result = 0;

  void showNumber() {
    Text(
      '$result',
      style: GoogleFonts.jersey15(
        textStyle: TextStyle(fontSize: 40, color: Color(0xffD56989)),
      ),
    );
  }

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
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Color(0xffD56989), width: 4),
                  ),
                  child: Expanded(
                    child: Padding(
                      padding: EdgeInsetsGeometry.only(
                        top: 16,
                        right: 32,
                        bottom: 16,
                        left: 32,
                      ),
                      child: TextButton(
                        onPressed: () {
                          print(result = number1 + number2);
                          Text(
                            '$result',
                            style: GoogleFonts.jersey15(
                              textStyle: TextStyle(
                                fontSize: 40,
                                color: Color(0xffD56989),
                              ),
                            ),
                          );
                        },
                        child: Text('', style: TextStyle(fontSize: 40)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
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
                      'DEL',
                      style: GoogleFonts.jersey15(
                        textStyle: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      '%',
                      style: GoogleFonts.jersey15(
                        textStyle: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      '/',
                      style: GoogleFonts.jersey15(
                        textStyle: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Center(
                    child: TextButton(
                      onPressed: () {
                        print(number1 = 7);
                      },
                      child: Text(
                        '7',
                        style: GoogleFonts.jersey15(
                          textStyle: TextStyle(fontSize: 30),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: TextButton(
                      onPressed: () {
                        print(number2 = 8);
                      },
                      child: Text(
                        '8',
                        style: GoogleFonts.jersey15(
                          textStyle: TextStyle(fontSize: 30),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      '9',
                      style: GoogleFonts.jersey15(
                        textStyle: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: TextButton(
                      onPressed: () {
                        print(result = number1 + number2);
                      },
                      child: Text(
                        '*',
                        style: GoogleFonts.jersey15(
                          textStyle: TextStyle(fontSize: 30),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Center(
                    child: Text(
                      '4',
                      style: GoogleFonts.jersey15(
                        textStyle: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      '5',
                      style: GoogleFonts.jersey15(
                        textStyle: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      '6',
                      style: GoogleFonts.jersey15(
                        textStyle: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      '+',
                      style: GoogleFonts.jersey15(
                        textStyle: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Center(
                    child: Text(
                      '1',
                      style: GoogleFonts.jersey15(
                        textStyle: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      '2',
                      style: GoogleFonts.jersey15(
                        textStyle: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      '3',
                      style: GoogleFonts.jersey15(
                        textStyle: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      '-',
                      style: GoogleFonts.jersey15(
                        textStyle: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Center(
                    child: Text(
                      '0',
                      style: GoogleFonts.jersey15(
                        textStyle: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      '.',
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
          ],
        ),
      ),
    );
  }
}
