import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task3_fix/controller/information_controller.dart';
import 'package:task3_fix/font_style/font_style.dart';

InformationController informationController = Get.put(InformationController());

class MyDropDownBtn extends StatefulWidget {
  const MyDropDownBtn({
    Key? key,
  }) : super(key: key);

  @override
  State<MyDropDownBtn> createState() => _MyDropDownBtnState();
}

class _MyDropDownBtnState extends State<MyDropDownBtn> {
  String valueChoose1 = 'Độc thân';
  String valueChoose2 = '1';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            padding: EdgeInsets.only(
                left: size.width * 0.04, right: size.width * 0.02),
            margin: EdgeInsets.only(right: size.width * 0.04),
            decoration: BoxDecoration(
              border: Border.all(color: h1color, width: 1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: DropdownButton<String>(
              icon: const Icon(Icons.arrow_drop_down),
              isExpanded: true,
              underline: const SizedBox(),
              value: valueChoose1,
              onChanged: (newValue) {
                //informationController.alone = newValue1!;
                setState(() {
                  valueChoose1 = newValue!;
                });
                informationController.updateAlone(newValue!);
              },
              items: <String>['Độc thân', 'Đã có gia đình']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.only(
                left: size.width * 0.04, right: size.width * 0.02),
            margin: EdgeInsets.only(right: size.width * 0.02),
            decoration: BoxDecoration(
              border: Border.all(color: h1color, width: 1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: DropdownButton<String>(
              icon: const Icon(Icons.arrow_drop_down),
              isExpanded: true,
              underline: const SizedBox(),
              value: valueChoose2,
              onChanged: (newValue) {
                //informationController.alone = newValue1!;
                setState(() {
                  valueChoose2 = newValue!;
                });
                informationController.updateMember(newValue!);
              },
              items: <String>['1', '2', '3', '4']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
        )
      ],
    );
  }
}
