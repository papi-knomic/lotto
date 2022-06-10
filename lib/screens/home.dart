import 'package:flutter/material.dart';
import 'package:lotto/screens/responsive_body/Desktop_body.dart';
import 'package:lotto/screens/responsive_body/mobile_body.dart';
import 'package:lotto/screens/responsive_body/responsive_layout.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobileBody: MobileBody(),
      desktopBody: MobileBody(),
    );
  }
}