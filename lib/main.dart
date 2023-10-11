// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:developer';

import 'package:cal/buttons.dart';
import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String expression = "0";
  String result = "0";

  void addChar(String char) {
    setState(() {
      if (expression == "0") {
        expression = char;
      } else {
        expression += char;
      }

      log(expression);
    });
  }

  void allClear() {
    setState(() {
      expression = "0";
      result = "0";
    });
  }

  void backspace() {
    setState(() {
      if (expression.length == 1) {
        expression = "0";
        result = "0";
      } else {
        expression = expression.substring(0, expression.length - 1);
      }
    });
  }

  void getResult() {
    setState(() {
      if (expression != "0") {
        try {
          result = expression.interpret().toString();
        } catch (_) {
          result = "Err";
        }
        log(result);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'JetBrainsMono'),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Calculator'),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Color(0xFF1b1b1b),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                color: Color(0xfff5f5dc),
              )),
              height: 60,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  expression,
                  style: TextStyle(
                    color: Color(0xfff5f5dc),
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                color: Color(0xfff5f5dc),
              )),
              height: 70,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  result,
                  style: TextStyle(
                    color: Color(0xfff5f5dc),
                    fontSize: 22,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CusButton(
                      text: "AC",
                      type: BtnType.allClear,
                      function: allClear,
                    ),
                    CusButton(
                      text: "⌫",
                      function: backspace,
                    ),
                    CusButton(
                      text: "^",
                      type: BtnType.operators,
                      function: () => addChar('^'),
                    ),
                    CusButton(
                      text: "/",
                      type: BtnType.operators,
                      function: () => addChar('/'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CusButton(
                      text: "7",
                      function: () => addChar('7'),
                    ),
                    CusButton(
                      text: "8",
                      function: () => addChar('8'),
                    ),
                    CusButton(
                      text: "9",
                      function: () => addChar('9'),
                    ),
                    CusButton(
                      text: "*",
                      type: BtnType.operators,
                      function: () => addChar('*'),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CusButton(
                      text: "4",
                      function: () => addChar('4'),
                    ),
                    CusButton(
                      text: "5",
                      function: () => addChar('5'),
                    ),
                    CusButton(
                      text: "6",
                      function: () => addChar('6'),
                    ),
                    CusButton(
                      text: "-",
                      type: BtnType.operators,
                      function: () => addChar('-'),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CusButton(
                      text: "1",
                      function: () => addChar('1'),
                    ),
                    CusButton(
                      text: "2",
                      function: () => addChar('2'),
                    ),
                    CusButton(
                      text: "3",
                      function: () => addChar('3'),
                    ),
                    CusButton(
                      text: "+",
                      type: BtnType.operators,
                      function: () => addChar('+'),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CusButton(
                      text: ".",
                      function: () => addChar('.'),
                    ),
                    CusButton(
                      text: "0",
                      function: () => addChar('0'),
                    ),
                    CusButton(
                      text: "00",
                      function: () => addChar('00'),
                    ),
                    CusButton(
                      text: "=",
                      type: BtnType.equator,
                      function: getResult,
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
