import 'package:flutter/material.dart';
import 'package:task3_fix/font_style/font_style.dart';

Widget My12Bar(Size size) {
  return Row(
    children: <Widget>[
      Container(
        margin: EdgeInsets.only(left: size.width * 0.08),
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: h1color, width: 2),
        ),
        child: const Center(
          child: Text(
            '1',
            style: h2TextStyle,
          ),
        ),
      ),
      SizedBox(
        height: size.height * 0.005,
        width: size.width * 0.61,
        child: Container(
          color: h1color,
        ),
      ),
      Container(
        margin: EdgeInsets.only(right: size.width * 0.08),
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: h1color, width: 2),
        ),
        child: const Center(
          child: Text(
            '2',
            style: h2TextStyle,
          ),
        ),
      ),
    ],
  );
}
