import 'package:flutter/material.dart';
import 'package:lotto/utils/constant.dart';



class UserBottomSheet extends StatelessWidget {
  const UserBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      child: Padding(
        padding: EdgeInsets.only(top: 50, right: 20, left: 20),
        child: TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: kMyBlueColor,
              ),
              borderRadius: BorderRadius.circular(20),
            ),

          ),
        ),
      ),
    );
  }
}
