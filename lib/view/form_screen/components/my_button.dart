import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task3_fix/controller/information_controller.dart';
import 'package:task3_fix/view/form_screen/components/drop_down_btn.dart';
import 'package:task3_fix/view/form_screen/components/my_form_fill.dart';
import 'package:task3_fix/view/information_screen/information_screen.dart';

InformationController informationController = Get.put(InformationController());

class MyButton extends StatefulWidget {
  MyButton(myInfoController, {Key? key}) : super(key: key);
  var myInfoController;
  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  late TextEditingController soTien1controller = TextEditingController();
  late TextEditingController soTien2controller = TextEditingController();
  bool isValidValue1 = true;
  bool isValidValue2 = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: SizedBox(
        height: size.height * 0.06,
        width: size.width * 0.5,
        child: TextButton(
          child: const Text("Tiếp theo"),
          style: TextButton.styleFrom(
              primary: Colors.white,
              backgroundColor: Colors.orange,
              textStyle: const TextStyle(
                fontSize: 20,
                fontFamily: 'Montserrat',
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30))),
          onPressed: () {
            widget.myInfoController;
            print(informationController.getAlone());
            print(informationController.getSotien1());
            if (informationController.getAlone() == '' ||
                informationController.getMember() == '') {
              Get.defaultDialog(
                  title: 'Thông báo',
                  middleText: 'Vui lòng điền thông tin đầy đủ');
            }
            if (checkValue(informationController.getSotien1()) == false) {
              print('false');
              isValidValue1 = false;
              setState(() {
                MyFormFill1(size, 'VND', 'Nhập số tiền', isValidValue1,
                    soTien1controller);
              });
            }
            //Get.to(InformationPage());
          },
        ),
      ),
    );
  }
}

Widget MyButton1(Size size, myInfoController) {
  return Center(
    child: SizedBox(
      height: size.height * 0.06,
      width: size.width * 0.5,
      child: TextButton(
        child: const Text("Tiếp theo"),
        style: TextButton.styleFrom(
            primary: Colors.white,
            backgroundColor: Colors.orange,
            textStyle: const TextStyle(
              fontSize: 20,
              fontFamily: 'Montserrat',
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30))),
        onPressed: () {
          myInfoController;
          //print(informationController.getAlone());
          //print(informationController.getSotien1());
          if (informationController.getAlone() == '' ||
              informationController.getMember() == '') {
            Get.defaultDialog(
                title: 'Thông báo',
                middleText: 'Vui lòng điền thông tin đầy đủ');
          }
          if (checkValue(informationController.getSotien1()) == false) {}
          Get.to(InformationPage());
        },
      ),
    ),
  );
}

bool checkValue(String _value) {
  if (_value == '' ||
      _value.length >= 12 ||
      _value.contains('.') ||
      _value.contains(',') ||
      _value.contains('/') ||
      _value.contains('-')) {
    return false;
  } else {
    return true;
  }
}
