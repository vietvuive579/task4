import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task3_fix/font_style/font_style.dart';
import 'package:task3_fix/input_data/input_data.dart';

class MyListView extends StatefulWidget {
  const MyListView({Key? key}) : super(key: key);

  @override
  _MyListViewState createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  int selectedIndex = 0;
  onSelected(int index) {
    setState(() => selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: listViewData.length,
      itemBuilder: (context, index) => Container(
        margin: const EdgeInsets.only(bottom: 6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          color: selectedIndex == index ? h1color : Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              spreadRadius: 1,
              blurRadius: 2,
            ),
          ],
        ),
        child: ListTile(
          title: Text(
            listViewData[index],
            textAlign: TextAlign.justify,
            style: TextStyle(
              color: selectedIndex == index ? Colors.white : h1color,
              fontFamily: 'Montserrat',
            ),
          ),
          onTap: () {
            onSelected(index);
          },
          trailing: Container(
            //margin: EdgeInsets.only(left: 4),
            decoration: const BoxDecoration(
              color: Colors.grey,
              shape: BoxShape.circle,
            ),
            height: size.height * 0.1,
            width: size.width * 0.05,
            child: Transform.scale(
              scale: size.width * 0.05 / 15,
              child: Checkbox(
                onChanged: (value) {
                  onSelected(index);
                },
                value: selectedIndex == index,
                activeColor: Colors.orange,
                shape: const CircleBorder(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/*
Widget MyListView1(
      {@required size, @required selectedIndex, @required onSelected}) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: listViewData.length,
      itemBuilder: (context, index) => Container(
        margin: const EdgeInsets.only(bottom: 6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          color: selectedIndex == index ? h1color : Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              spreadRadius: 1,
              blurRadius: 2,
            ),
          ],
        ),
        child: ListTile(
          title: Text(
            listViewData[index],
            textAlign: TextAlign.justify,
            style: TextStyle(
              color: selectedIndex == index ? Colors.white : h1color,
              fontFamily: 'Montserrat',
            ),
          ),
          trailing: Container(
            //margin: EdgeInsets.only(left: 4),
            decoration: const BoxDecoration(
              color: Colors.grey,
              shape: BoxShape.circle,
            ),
            height: size.height * 0.1,
            width: size.width * 0.05,
            child: Transform.scale(
              scale: size.width * 0.05 / 15,
              child: Checkbox(
                onChanged: (value) {
                  onSelected(index);
                },
                value: selectedIndex == index,
                activeColor: Colors.orange,
                shape: const CircleBorder(),
              ),
            ),
          ),
        ),
      ),
    );
  }
*/