import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task3_fix/controller/information_controller.dart';
import 'package:task3_fix/font_style/font_style.dart';
import 'package:task3_fix/view/form_screen/components/datacollect_content.dart';
import 'package:task3_fix/view/form_screen/components/drop_down_btn.dart';
import 'package:task3_fix/view/form_screen/components/my12bar.dart';
import 'package:task3_fix/view/form_screen/components/my_button.dart';
import 'package:task3_fix/view/form_screen/components/my_form_fill.dart';
import 'package:task3_fix/view/form_screen/components/mylistview.dart';
import 'package:task3_fix/view/form_screen/components/title_of_dropdownbtn.dart';
import 'package:task3_fix/view/form_screen/input_title_content.dart';
import 'package:task3_fix/view/information_screen/information_screen.dart';

InformationController informationController = Get.put(InformationController());

class FormScreen extends StatefulWidget {
  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  List<bool> isValidValue = [true, true, true, true, true, true, true, true];
  /*List<String> getAll = [
    informationController.getSotien1(),
    informationController.getSotien2(),
    informationController.getSotien3(),
    informationController.getSotien4(),
    informationController.getSotien5(),
    informationController.getSotien6(),
    informationController.getSotien7(),
    informationController.getSotien8()
  ];*/
  //List<TextEditingController> soTienController = [soTien1controller];
  //bool isValidValue1 = true;
  //bool isValidValue2 = true;
  late TextEditingController soTien1controller = TextEditingController();
  late TextEditingController soTien2controller = TextEditingController();
  late TextEditingController soTien3controller = TextEditingController();
  late TextEditingController soTien4controller = TextEditingController();
  late TextEditingController soTien5controller = TextEditingController();
  late TextEditingController soTien6controller = TextEditingController();
  late TextEditingController soTien7controller = TextEditingController();
  late TextEditingController soTien8controller = TextEditingController();
  //static var soTien1controller;
  //late List<TextEditingController> soTienController;
  //static var b;
  /*@override
  void initState() {
    super.initState();
    soTienController = [soTien1controller, soTien2controller];
  }*/
  int count = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Tư vấn đầu tư cá nhân",
            style: h1TextStyle,
          ),
          backgroundColor: Colors.white,
          elevation: 0.3,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
          iconTheme: const IconThemeData(
            color: Color(0xff2a367e),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(
                left: size.width * 0.04, right: size.width * 0.04),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                //--------------
                My12Bar(size),
                //--------------
                SizedBox(height: size.height * 0.005),
                DataCollectContent(),
                //--------------
                SizedBox(height: size.height * 0.03),
                TitleofDropdownBtn(),
                SizedBox(height: size.height * 0.01),
                const MyDropDownBtn(),
                //--------------
                SizedBox(height: size.height * 0.02),
                h2TitleContent('Chọn một điều giống với bản thân nhất'),
                //---------------
                SizedBox(height: size.height * 0.02),
                const MyListView(),
                //--------------
                SizedBox(height: size.height * 0.02),
                h2TitleContent('Số tiền hiện có dùng để đầu tư'),
                //11111111111111111111111111111111111111111111111
                SizedBox(height: size.height * 0.02),
                h3TitleContent('Tổng tiền muốn đầu tư'),
                SizedBox(height: size.height * 0.01),
                MyFormFill(size, 'VND', 'Nhập số tiền', isValidValue[0],
                    soTien1controller),
                //222222222222222222222222222222222222222222222222
                SizedBox(height: size.height * 0.02),
                h3TitleContent('Tài sản hiện có'),
                SizedBox(height: size.height * 0.01),
                MyFormFill(size, 'VND', 'Nhập tài sản hiện có', isValidValue[1],
                    soTien2controller),
                //3333333333333333333333333333333333333333333333333
                SizedBox(height: size.height * 0.02),
                h3TitleContent('Tỷ suất sinh lời mong muốn'),
                SizedBox(height: size.height * 0.01),
                MyFormFill(size, '%', 'Nhập tỷ suất sinh lời mong muốn',
                    isValidValue[2], soTien3controller),
                //---------------
                SizedBox(height: size.height * 0.02),
                h2TitleContent('Thu nhập chi tiêu hàng tháng'),
                //44444444444444444444444444444444444444444444444444
                SizedBox(height: size.height * 0.02),
                h3TitleContent('Tổng thu nhập hàng tháng'),
                SizedBox(height: size.height * 0.01),
                MyFormFill(size, 'VND', 'Nhập số tiền', isValidValue[3],
                    soTien4controller),
                //55555555555555555555555555555555555555555555555555
                SizedBox(height: size.height * 0.02),
                h3TitleContent('Tài chi tiêu hàng tháng'),
                SizedBox(height: size.height * 0.01),
                MyFormFill(size, 'VND', 'Nhập số tiền', isValidValue[4],
                    soTien5controller),
                //66666666666666666666666666666666666666666666666666
                SizedBox(height: size.height * 0.02),
                h3TitleContent('Số tiền trả ngân hàng (nếu có)'),
                SizedBox(height: size.height * 0.01),
                MyFormFill(size, 'VND', 'Nhập số tiền', isValidValue[5],
                    soTien6controller),
                //77777777777777777777777777777777777777777777777777
                SizedBox(height: size.height * 0.02),
                h3TitleContent('Khoản tiết kiệm'),
                SizedBox(height: size.height * 0.01),
                MyFormFill(size, 'VND', 'Nhập số tiền', isValidValue[6],
                    soTien7controller),
                //88888888888888888888888888888888888888888888888888
                SizedBox(height: size.height * 0.02),
                h3TitleContent('Tổng giá trị tài sản hiện có'),
                SizedBox(height: size.height * 0.01),
                MyFormFill(size, 'VND', 'Nhập số tiền', isValidValue[7],
                    soTien8controller),
                //---------------
                SizedBox(height: size.height * 0.02),
                /*MyButton(
                  informationController.updateInformation(
                    soTien1: soTien1controller.text,
                    soTien2: soTien2controller.text,
                    alone: informationController.getAlone(),
                    member: informationController.getMember(),
                  ),
                ),*/
                Center(
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
                        informationController.updateInformation(
                          soTien1: soTien1controller.text,
                          soTien2: soTien2controller.text,
                          soTien3: soTien3controller.text,
                          soTien4: soTien4controller.text,
                          soTien5: soTien5controller.text,
                          soTien6: soTien6controller.text,
                          soTien7: soTien7controller.text,
                          soTien8: soTien8controller.text,
                          alone: informationController.getAlone(),
                          member: informationController.getMember(),
                        );
                        //print(informationController.getAlone());
                        //print(informationController.getSotien1());

                        /*for (int i = 0; i < isValidValue.length - 1; i++) {
                          if (checkValue(informationController.getAll[i]) ==
                              false) {
                            isValidValue[i] = false;
                            print(informationController.getAll[i]);
                            print(informationController.getSotien1());
                            print(soTienController[i].text);
                            setState(() {
                              MyFormFill(size, 'VND', 'Nhập số tiền',
                                  isValidValue[i], soTienController[i]);
                            });
                          } else {
                            isValidValue[i] = true;
                            print('true');
                            setState(() {
                              MyFormFill(size, 'VND', 'Nhập số tiền',
                                  isValidValue[i], soTienController[i]);
                            });
                          }
                        }*/
                        if (checkValue(informationController.getSotien1()) ==
                            false) {
                          isValidValue[0] = false;
                          setState(() {
                            MyFormFill(size, 'VND', 'Nhập số tiền',
                                isValidValue[0], soTien1controller);
                          });
                        } else {
                          isValidValue[0] = true;
                          setState(() {
                            MyFormFill(size, 'VND', 'Nhập số tiền',
                                isValidValue[0], soTien1controller);
                          });
                        }
                        //-------------------------------------------
                        if (checkValue(informationController.getSotien2()) ==
                            false) {
                          isValidValue[1] = false;
                          setState(() {
                            MyFormFill(size, 'VND', 'Nhập số tiền',
                                isValidValue[1], soTien2controller);
                          });
                        } else {
                          isValidValue[1] = true;
                          setState(() {
                            MyFormFill(size, 'VND', 'Nhập số tiền',
                                isValidValue[1], soTien2controller);
                          });
                        }
                        //-------------------------------------------------
                        if (checkValue(informationController.getSotien3()) ==
                            false) {
                          isValidValue[2] = false;
                          setState(() {
                            MyFormFill(size, 'VND', 'Nhập số tiền',
                                isValidValue[2], soTien3controller);
                          });
                        } else {
                          isValidValue[2] = true;
                          setState(() {
                            MyFormFill(size, 'VND', 'Nhập số tiền',
                                isValidValue[2], soTien3controller);
                          });
                        }
                        //------------------------------------------------
                        if (checkValue(informationController.getSotien4()) ==
                            false) {
                          isValidValue[3] = false;
                          setState(() {
                            MyFormFill(size, 'VND', 'Nhập số tiền',
                                isValidValue[3], soTien4controller);
                          });
                        } else {
                          isValidValue[3] = true;
                          setState(() {
                            MyFormFill(size, 'VND', 'Nhập số tiền',
                                isValidValue[3], soTien4controller);
                          });
                        }
                        //-----------------------------------------------
                        if (checkValue(informationController.getSotien5()) ==
                            false) {
                          isValidValue[4] = false;
                          setState(() {
                            MyFormFill(size, 'VND', 'Nhập số tiền',
                                isValidValue[4], soTien5controller);
                          });
                        } else {
                          isValidValue[4] = true;
                          setState(() {
                            MyFormFill(size, 'VND', 'Nhập số tiền',
                                isValidValue[4], soTien5controller);
                          });
                        }
                        //----------------------------------------------
                        if (checkValue(informationController.getSotien6()) ==
                            false) {
                          isValidValue[5] = false;
                          setState(() {
                            MyFormFill(size, 'VND', 'Nhập số tiền',
                                isValidValue[5], soTien6controller);
                          });
                        } else {
                          isValidValue[5] = true;
                          setState(() {
                            MyFormFill(size, 'VND', 'Nhập số tiền',
                                isValidValue[5], soTien6controller);
                          });
                        }
                        //------------------------------------------------
                        if (checkValue(informationController.getSotien7()) ==
                            false) {
                          isValidValue[6] = false;
                          setState(() {
                            MyFormFill(size, 'VND', 'Nhập số tiền',
                                isValidValue[6], soTien7controller);
                          });
                        } else {
                          isValidValue[6] = true;
                          setState(() {
                            MyFormFill(size, 'VND', 'Nhập số tiền',
                                isValidValue[6], soTien7controller);
                          });
                        }
                        //-----------------------------------------------
                        if (checkValue(informationController.getSotien8()) ==
                            false) {
                          isValidValue[7] = false;
                          setState(() {
                            MyFormFill(size, 'VND', 'Nhập số tiền',
                                isValidValue[7], soTien8controller);
                          });
                        } else {
                          isValidValue[7] = true;
                          setState(() {
                            MyFormFill(size, 'VND', 'Nhập số tiền',
                                isValidValue[7], soTien8controller);
                          });
                        }
                        if (informationController.getAlone() == '' ||
                            informationController.getMember() == '') {
                          Get.defaultDialog(
                              title: 'Thông báo',
                              middleText: 'Vui lòng điền thông tin đầy đủ');
                        } else if (isValidValue[0] == true &&
                            isValidValue[1] == true &&
                            isValidValue[2] == true &&
                            isValidValue[3] == true &&
                            isValidValue[4] == true &&
                            isValidValue[5] == true &&
                            isValidValue[6] == true &&
                            isValidValue[7] == true) {
                          Get.to(InformationPage());
                        }
                      },
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.02),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
