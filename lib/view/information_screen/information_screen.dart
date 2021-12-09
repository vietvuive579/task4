import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task3_fix/controller/information_controller.dart';
import 'package:task3_fix/view/information_screen/components/input_info_widget.dart';

class InformationPage extends StatefulWidget {
  @override
  _InformationPageState createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
  InformationController informationController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Thông tin"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: GetBuilder<InformationController>(
            init: InformationController(),
            builder: (informationController) {
              return Container(
                padding: EdgeInsets.all(12),
                child: Column(
                  children: [
                    informationWidget(
                        label: "Tình trạng hôn nhân",
                        content: informationController.getAlone()),
                    const Divider(),
                    informationWidget(
                        label: "Thành viên trong gia đình",
                        content: informationController.getMember()),
                    const Divider(),
                    informationWidget(
                        label: "Số tiền hiện có dùng đầu tư",
                        content: informationController.getSotien1()),
                    const Divider(),
                    informationWidget(
                        label: "Tài sản hiện có",
                        content: informationController.getSotien2()),
                    Divider(),
                    informationWidget(
                        label: "Tỷ suất sinh lời mong muốn",
                        content: informationController.getSotien3()),
                    Divider(),
                    informationWidget(
                        label: "Tổng thu nhập hàng tháng",
                        content: informationController.getSotien4()),
                    Divider(),
                    informationWidget(
                        label: "Tổng chi tiêu hàng tháng",
                        content: informationController.getSotien5()),
                    Divider(),
                    informationWidget(
                        label: "Số tiền trả ngân hàng (nếu có)",
                        content: informationController.getSotien6()),
                    Divider(),
                    informationWidget(
                        label: "Khoản tiết kiệm",
                        content: informationController.getSotien7()),
                    Divider(),
                    informationWidget(
                        label: "Tổng giá trị tài sản hiện có",
                        content: informationController.getSotien8()),
                    Divider(),
                  ],
                ),
              );
            },
          ),
        ));
  }
}
