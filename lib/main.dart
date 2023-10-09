// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:developer';

import 'package:cal/buttons.dart';
import 'package:flutter/material.dart';

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

  void addNum(String char) {
    setState(() {
      if (expression == "0") {
      expression = char;
    } else {
      expression += char;
    }

    log(expression);
    
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
                      function: () {},
                    ),
                    CusButton(
                      text: "⌫",
                      function: () {},
                    ),
                    CusButton(
                      text: "^",
                      type: BtnType.operators,
                      function: () {},
                    ),
                    CusButton(
                      text: "/",
                      type: BtnType.operators,
                      function: () {},
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
                      function: () => addNum('7'),
                    ),
                    CusButton(
                      text: "8",
                      function: () => addNum('8'),
                    ),
                    CusButton(
                      text: "9",
                      function: () => addNum('9'),
                    ),
                    CusButton(
                      text: "*",
                      type: BtnType.operators,
                      function: () {},
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
                      function: () => addNum('4'),
                    ),
                    CusButton(
                      text: "5",
                      function: () => addNum('5'),
                    ),
                    CusButton(
                      text: "6",
                      function: () => addNum('6'),
                    ),
                    CusButton(
                      text: "-",
                      type: BtnType.operators,
                      function: () {},
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
                      function: () => addNum('1'),
                    ),
                    CusButton(
                      text: "2",
                      function: () => addNum('2'),
                    ),
                    CusButton(
                      text: "3",
                      function: () => addNum('3'),
                    ),
                    CusButton(
                      text: "+",
                      type: BtnType.operators,
                      function: () {},
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
                      function: () => addNum('.'),
                    ),
                    CusButton(
                      text: "0",
                      function: () => addNum('0'),
                    ),
                    CusButton(
                      text: "00",
                      function: () => addNum('00'),
                    ),
                    CusButton(
                      text: "=",
                      type: BtnType.equator,
                      function: () {},
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
