// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cal/buttons.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CusButton(),
                    CusButton(),
                    CusButton(),
                    CusButton()
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CusButton(),
                    CusButton(),
                    CusButton(),
                    CusButton()
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    
                    CusButton(),
                    CusButton(),
                    CusButton(),
                    CusButton()
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    
                    CusButton(),
                    CusButton(),
                    CusButton(),
                    CusButton()
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    
                    CusButton(),
                    CusButton(),
                    CusButton(),
                    CusButton()
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
