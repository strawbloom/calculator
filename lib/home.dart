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
                          print(output);
                        },
                        child: Text(output, style: TextStyle(fontSize: 40)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(children: []),
            SizedBox(height: 20),
            Row(children: []),
            SizedBox(height: 20),
            Row(children: []),
            SizedBox(height: 20),
            Row(children: []),
            SizedBox(height: 20),
            Row(children: []),
          ],
        ),
      ),
    );
  }
}
