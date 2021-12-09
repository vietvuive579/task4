import 'package:flutter/material.dart';
import 'package:task3_fix/font_style/font_style.dart';

Widget TitleofDropdownBtn() {
  return Row(
    children: const <Widget>[
      Expanded(
        child: Text('Tình trạng hôn nhân', style: h1TextStyle),
      ),
      Expanded(
        child: Text('Thành viên trong gia đình', style: h1TextStyle),
      )
    ],
  );
}
