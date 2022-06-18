import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lotto/controller/user_controller.dart';
import 'package:lotto/utils/constant.dart';

Container EditBottom() {
  TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    _controller;
  }

  return Container(
    height: 400,
    decoration: const BoxDecoration(),
    child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      const SizedBox(
        height: 40,
      ),
      const Text(
        'What\'s your name ?',
        style: kMyTextStyle,
      ),
      Padding(
        padding: const EdgeInsets.only(top: 10, left: 40, right: 40),
        child: Form(
          child: TextFormField(
            controller: _controller,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your name';
              }
              return null;
            },
            decoration: const InputDecoration(
                border: UnderlineInputBorder(
                    borderSide: BorderSide(
                        style: BorderStyle.solid, color: Colors.black)),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(style: BorderStyle.solid))),
          ),
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      SizedBox(
        height: 50,
        width: 150,
        child: GetBuilder<UserController>(
          builder: (controller) {
            return ElevatedButton(
              onPressed: () {
                if (_controller.text.isNotEmpty) {
                  Get.back();
                  controller.setUserName(_controller.text);
                  Get.snackbar('Success', "Username has been changed",
                      backgroundColor: Colors.green,
                      snackPosition: SnackPosition.BOTTOM,
                      duration: const Duration(seconds: 5));
                } else {
                  Get.snackbar('Empty', "Please enter your name",
                      backgroundColor: Colors.red,
                      snackPosition: SnackPosition.BOTTOM,
                      duration: const Duration(seconds: 5));
                }
              },
              child: const Text('Enter'),
              style: ElevatedButton.styleFrom(
                  primary: kMyBlueColor,
                  onPrimary: Colors.white,
                  textStyle: kMyTextStyle,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))),
            );
          },
        ),
      )
    ]),
  );
}
