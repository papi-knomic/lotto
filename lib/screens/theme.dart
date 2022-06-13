import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lotto/utils/themes.dart';

Container ThemeBottom() => Container(
      child: Wrap(children: [
        ListTile(
          leading: Icon(Icons.wb_sunny_outlined),
          title: Text('Light Theme'),
          onTap: () {
            Get.changeTheme(Themes.lightTheme);
          },
        ),
        ListTile(
          leading: Icon(Icons.wb_sunny),
          title: Text('Dark Theme'),
          onTap: () {
            Get.changeTheme(Themes.darkTheme);
          },
        )
      ]),
    );
