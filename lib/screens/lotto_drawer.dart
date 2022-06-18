import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lotto/controller/lotto_controller.dart';
import 'package:lotto/controller/user_controller.dart';
import 'package:lotto/screens/edit_page.dart';
import 'package:lotto/screens/history_page.dart';
import 'package:lotto/screens/theme.dart';
import 'package:lotto/utils/constant.dart';

class LottoDrawer extends StatefulWidget {
  const LottoDrawer({Key? key}) : super(key: key);

  @override
  State<LottoDrawer> createState() => _LottoDrawerState();
}

class _LottoDrawerState extends State<LottoDrawer> {
  @override
  final padding = const EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: ListView(
          padding: padding,
          children: [
            const SizedBox(
              height: 40,
            ),
            GetBuilder<LottoController>(
              builder: (controller) {
                return GetBuilder<UserController>(builder: (user) {
                  return headerWidget(
                      text: "Hi, " + user.userName,
                      points: controller.userPoint,
                      games: controller.lottoHistoryLength);
                });
              },
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 1,
            ),
            buildDrawerItems(
              text: 'Edit',
              icon: Icons.edit,
              onClicked: () {
                // selectedItem(context, 0);
                Get.bottomSheet(EditBottom(),
                    backgroundColor: Colors.white,
                    isDismissible: true,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                    )));
              },
            ),
            const SizedBox(
              height: 10,
            ),
            buildDrawerItems(
              text: 'History',
              icon: Icons.history_rounded,
              onClicked: () {
                selectedItem(context, 1);
              },
            ),
            const SizedBox(height: 10),
            buildDrawerItems(
              text: 'Theme',
              icon: Icons.lightbulb_outline_rounded,
              onClicked: () {
                // selectedItem(context, 0);
                Get.bottomSheet(ThemeBottom(),
                    backgroundColor: Colors.white,
                    isDismissible: true,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                    )));
              },
            ),
            const SizedBox(
              height: 350,
            ),
            const Text('Made with ❤️ by Samson and Tunmise.'),
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
    const color = Colors.black;
    const hoverColors = kMyBlueColor;
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
    // switch (i) {
    //   case 0:
    //     Navigator.of(context)
    //         .push(MaterialPageRoute(builder: (context) => const EditBottom()));
    //     break;
    // }
    switch (i) {
      case 1:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const HistoryPage()));
        break;
    }
  }
}

Widget headerWidget(
    {required String text, required int points, required int games}) {
  return Column(
    children: [
      Text(
        text,
        style: kMyTextStyle,
      ),
      const SizedBox(
        height: 10,
      ),
      Text(
        "Points: " + points.toString(),
        style: kMyTextStyle,
      ),
      const SizedBox(
        height: 10,
      ),
      Text(
        "Games Played: " + games.toString(),
        style: kMyTextStyle,
      )
    ],
  );
}
