// ignore_for_file: prefer_const_constructors

import 'dart:developer';

import 'package:flutter/material.dart';

class CusButton extends StatelessWidget {
  String text;
  BtnType type;
  VoidCallback? function;
  CusButton({
    super.key,
    required this.text,
    this.type = BtnType.numbers,
    required this.function
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;

    return InkWell(
      onTap: function,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xfff5f5dc),
          ),
          color: getColor(type),
        ),
        width: (width - 55) / 4,
        height: 85,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: Color(0xfff5f5dc),
                fontSize: 25,
                fontWeight: FontWeight.normal),
          ),
        ),
      ),
    );
  }
}

enum BtnType {
  allClear,
  operators,
  numbers,
  equator,
}

Color getColor(BtnType type) {
  switch (type) {
    case BtnType.allClear:
      return Color(0xFFc24545);
    case BtnType.operators:
      return Color(0xFF292929);
    case BtnType.equator:
      return Color(0xFF52913f);
    default:
      return Colors.transparent;
  }
}
