// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CusButton extends StatelessWidget {
  const CusButton({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
        color: Color(0xfff5f5dc),
      )),
      width: (width - 55) / 4,
      height: 90,
    );
  }
}
