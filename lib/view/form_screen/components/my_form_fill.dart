import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:task3_fix/font_style/font_style.dart';

Widget MyFormFill(Size size, unit, hintText, isValidValue, controller) {
  return Stack(
    children: [
      Container(
        margin: EdgeInsets.only(left: size.width * 0.66),
        height: size.height * 0.065,
        decoration: BoxDecoration(
          color: h1color,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
        alignment: Alignment.center,
        child: Text(
          unit,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            fontSize: size.width * 0.26 / 5,
          ),
        ),
      ),
      SizedBox(
        width: size.width * 0.7,
        //height: size.height * 0.1,
        child: TextFormField(
          keyboardType: TextInputType.number,
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.digitsOnly
          ],
          decoration: InputDecoration(
            //isDense: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(width: 1.5, color: h1color),
            ),
            filled: true,
            fillColor: Colors.white,
            contentPadding: EdgeInsets.only(left: size.width * 0.04, bottom: 6),
            errorText: isValidValue ? null : 'Invalid Number',
            hintText: hintText,
            hintStyle: const TextStyle(
              fontSize: 15,
              //height: 1,
            ),
          ),
          /*onChanged: (value) {
            myvalue = value;
            print(myvalue);
          },*/
          controller: controller,
        ),
      ),
    ],
  );
}

Widget MyFormFill1(Size size, unit, hintText, isValidValue, controller) {
  return Stack(
    children: [
      Container(
        margin: EdgeInsets.only(left: size.width * 0.66),
        height: size.height * 0.065,
        decoration: BoxDecoration(
          color: h1color,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
        alignment: Alignment.center,
        child: Text(
          unit,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            fontSize: size.width * 0.26 / 5,
          ),
        ),
      ),
      SizedBox(
        width: size.width * 0.7,
        child: TextFormField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(width: 1.5, color: h1color),
            ),
            filled: true,
            fillColor: Colors.white,
            contentPadding: EdgeInsets.only(left: size.width * 0.04, bottom: 6),
            errorText: isValidValue ? null : 'Invalid Number',
            hintText: hintText,
            hintStyle: const TextStyle(
              fontSize: 15,
            ),
          ),
          /*onChanged: (value) {
            myvalue = value;
            print(myvalue);
          },*/
          controller: controller,
        ),
      ),
    ],
  );
}

Widget MyFormFill2(Size size, unit, hintText, isValidValue, controller) {
  return Stack(
    children: [
      Container(
        margin: EdgeInsets.only(left: size.width * 0.66),
        height: size.height * 0.065,
        decoration: BoxDecoration(
          color: h1color,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
        alignment: Alignment.center,
        child: Text(
          unit,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            fontSize: size.width * 0.26 / 5,
          ),
        ),
      ),
      SizedBox(
        width: size.width * 0.7,
        child: TextFormField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(width: 1.5, color: h1color),
            ),
            filled: true,
            fillColor: Colors.white,
            contentPadding: EdgeInsets.only(left: size.width * 0.04, bottom: 6),
            errorText: isValidValue ? null : 'Invalid Number',
            hintText: hintText,
            hintStyle: const TextStyle(
              fontSize: 15,
            ),
          ),
          /*onChanged: (value) {
            myvalue = value;
            print(myvalue);
          },*/
          controller: controller,
        ),
      ),
    ],
  );
}
