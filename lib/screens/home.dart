import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lotto/controller/lotto_controller.dart';
import 'package:lotto/screens/dimensions/mobile_body.dart';
import 'package:lotto/screens/dimensions/responsive_layout.dart';
import '../utils/constant.dart';
import 'dimensions/Desktop_body.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {
   return ResponsiveLayout(
       mobileBody: MobileBody(),
       desktopBody: DesktopBody(),
   );
  }
}
