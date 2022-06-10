import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lotto/utils/constant.dart';

Container EditBottom() {
  TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    _controller;
  }

  return Container(
    height: 400,
    child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      SizedBox(
        height: 40,
      ),
      Text(
        'What\'s your name ?',
        style: kMyTextStyle,
      ),
      Padding(
        padding: const EdgeInsets.only(top: 10, left: 40, right: 40),
        child: TextField(
          controller: _controller,
          decoration: InputDecoration(
              border: UnderlineInputBorder(
                  borderSide: BorderSide(
                      style: BorderStyle.solid, color: Colors.black)),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(style: BorderStyle.solid))),
        ),
      ),
      SizedBox(
        height: 20,
      ),
      SizedBox(
        height: 50,
        width: 150,
        child: ElevatedButton(
          onPressed: () {
            Get.defaultDialog(
                backgroundColor: kMyBlueColor,
                onCancel: () {},
                onConfirm: () {},
                buttonColor: Colors.green);
          },
          child: Text('Enter'),
          style: ElevatedButton.styleFrom(
              primary: kMyBlueColor,
              onPrimary: Colors.white,
              textStyle: kMyTextStyle,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30))),
        ),
      )
    ]),
  );
}
