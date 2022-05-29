import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget desktopBody;
  // final Widget tabletBody;
  const ResponsiveLayout({Key? key,
    required this.mobileBody,
    required this.desktopBody,
    // required this.tabletBody
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth< 600){
          return mobileBody;
        }else {
          return desktopBody;
        }
      },);
  }
}
