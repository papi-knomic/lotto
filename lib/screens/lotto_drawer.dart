import 'package:flutter/material.dart';
import 'package:lotto/screens/edit_page.dart';
import 'package:lotto/screens/history_page.dart';
import 'package:lotto/utils/constant.dart';

class LottoDrawer extends StatefulWidget {
  const LottoDrawer({Key? key}) : super(key: key);

  @override
  State<LottoDrawer> createState() => _LottoDrawerState();
}

class _LottoDrawerState extends State<LottoDrawer> {
  @override
  final padding = EdgeInsets.symmetric(horizontal: 20);
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: ListView(
          padding: padding,
          children: [
            SizedBox(
              height: 40,
            ),
            headerWidget(text: "Tunmise", points: '10'),
            SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 1,
            ),
            buildDrawerItems(
              text: 'Edit',
              icon: Icons.edit,
              onClicked: () {
                selectedItem(context, 0);
              },
            ),
            SizedBox(
              height: 10,
            ),
            buildDrawerItems(
              text: 'History',
              icon: Icons.history_rounded,
              onClicked: () {
                selectedItem(context, 1);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDrawerItems({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.black;
    final hoverColors = kMyBlueColor;
    return ListTile(
      leading: Icon(
        icon,
        color: color,
      ),
      title: Text(text, style: kMyTextStyle),
      hoverColor: hoverColors,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int i) {
    switch (i) {
      case 0:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => EditPage()));
        break;
    }
    switch (i) {
      case 1:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => HistoryPage()));
        break;
    }
  }
}

Widget headerWidget({
  required String text,
  required String points,
}) {
  return Column(
    children: [
      Text(
        text,
        style: kMyTextStyle,
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        points,
        style: kMyTextStyle,
      )
    ],
  );
}