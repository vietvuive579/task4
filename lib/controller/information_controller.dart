import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task3_fix/model/information_model.dart';

class InformationController extends GetxController {
  Information information = Information('', '', '', '', '', '', '', '', '', '');
  /*late String soTien1;
  late String soTien2;
  late String soTien3;
  late String soTien4;
  late String soTien5;
  late String soTien6;
  late String soTien7;
  late String soTien8;
  late String alone = '';
  late String member = '';*/

  updateInformation({
    @required soTien1,
    @required soTien2,
    @required soTien3,
    @required soTien4,
    @required soTien5,
    @required soTien6,
    @required soTien7,
    @required soTien8,
    @required alone,
    @required member,
  }) {
    information.soTien1 = soTien1;
    information.soTien2 = soTien2;
    information.soTien3 = soTien3;
    information.soTien4 = soTien4;
    information.soTien5 = soTien5;
    information.soTien6 = soTien6;
    information.soTien7 = soTien7;
    information.soTien8 = soTien8;
    information.alone = alone;
    information.memberofFamily = member;
    update();
  }

  void updateAlone(String newValue) {
    information.alone = newValue;
    update();
  }

  void updateMember(String newValue) {
    information.memberofFamily = newValue;
    update();
  }

  String getMember() {
    return information.memberofFamily;
  }

  String getAlone() {
    return information.alone;
  }

  String getSotien1() {
    return information.soTien1;
  }

  String getSotien2() {
    return information.soTien2;
  }

  String getSotien3() {
    return information.soTien3;
  }

  String getSotien4() {
    return information.soTien4;
  }

  String getSotien5() {
    return information.soTien5;
  }

  String getSotien6() {
    return information.soTien6;
  }

  String getSotien7() {
    return information.soTien7;
  }

  String getSotien8() {
    return information.soTien8;
  }
}
