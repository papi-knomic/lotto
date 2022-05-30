
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:lotto/controller/lotto_controller.dart';
import 'package:lotto/screens/edit_page.dart';
import 'package:lotto/screens/history_page.dart';
import 'package:lotto/utils/constant.dart';


class MobileBody extends StatefulWidget {
  const MobileBody({Key? key}) : super(key: key);

  @override
  _MobileBodyState createState() => _MobileBodyState();
}
 final scrollController = ScrollController(initialScrollOffset: 0);

class _MobileBodyState extends State<MobileBody> {

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
          drawer: Drawer(
          child: Container(
            child: ListView(
              padding: padding,
              children: [
                SizedBox(
                  height: 40,
                ),
               buildDrawerItems(
                   text: 'Edit',
                   icon: Icons.edit,
                 onClicked: () {selectedItem(context, 0);},
               ),
            buildDrawerItems(
              text: 'History',
              icon: Icons.history_rounded,
              onClicked: () {selectedItem(context, 1);},
            ),],
            ),
          ),
            ),
          body: GetBuilder<LottoController>(
            builder: (controller) {
              return Container(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              _scaffoldKey.currentState?.openDrawer();
                            },
                            icon: Icon(Icons.menu),iconSize: 40,),
                        Padding(
                          padding: const EdgeInsets.only(left: 85),
                          child: const Text(
                            'Lotto',
                            style: TextStyle(
                                fontFamily: 'Pacifico',
                                fontSize: 50,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    const Text(
                      'Choose 6 numbers',
                      style: TextStyle(
                          fontFamily: 'JosefinSans',
                          fontSize: 40,
                          fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    GetBuilder<LottoController>(builder: (controller) {
                      return Column(
                        children: [
                          Wrap(
                            spacing: 15,
                            children: [
                              for (int i = 0; i < 6; i++)
                                Container(
                                  width: w * 0.12,
                                  height: h * 0.10,
                                  decoration: BoxDecoration(
                                      color: controller.isPlayed
                                          ? (controller.lottoNumbers.contains(
                                          controller.userNumbers
                                              .elementAt(i))
                                          ? Colors.green
                                          : Colors.red)
                                          : Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: const [
                                        BoxShadow(
                                            color: kMyBlueColor,
                                            blurRadius: 7,
                                            offset: Offset(0, 3))
                                      ]),
                                  child: Center(
                                      child: Text(
                                        controller.userNumbersLength > i
                                            ? controller.userNumbers
                                            .elementAt(i)
                                            .toString()
                                            : '',
                                        style: TextStyle(
                                            fontFamily: 'JosefinSans',
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700
                                        ),
                                      )),
                                ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          controller.isPlayed
                              ? Wrap(
                            spacing: 15,
                            children: [
                              for (int number
                              in controller.lottoNumbers)
                                Container(
                                  width: w * 0.12,
                                  height: h * 0.10,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                      BorderRadius.circular(20),
                                      boxShadow: const [
                                        BoxShadow(
                                            color: kMyBlueColor,
                                            blurRadius: 7,
                                            offset: Offset(0, 3))
                                      ]),
                                  child: Center(
                                      child: Text(
                                        number.toString(),
                                        style: TextStyle(
                                            fontFamily: 'JosefinSans',
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700
                                        ),
                                      )),
                                ),
                            ],
                          )
                              : Container(),
                        ],
                      );
                    }),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 50,
                      width: 150,
                      child: ElevatedButton(
                        onPressed: () {
                          if (controller.isPlayed) {
                            controller.getLottoNumbers();
                          } else {
                            controller.checkNumbers();
                          }
                        },
                        child: Text(controller.isPlayed ? 'Reset' : 'Play'),
                        style: ElevatedButton.styleFrom(
                            primary: kMyBlueColor,
                            textStyle: const TextStyle(
                                fontFamily: 'Pacifico',
                                fontWeight: FontWeight.w400,
                                fontSize: 25),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30))),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),
                            topLeft: Radius.circular(50),
                          ),
                          color: kMyBlueColor,
                        ),
                        child: GridView.builder(
                          gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 5, childAspectRatio: (1 / 1)),
                          itemCount: 60,
                          controller: scrollController,
                          scrollDirection: Axis.vertical,
                          physics: const ScrollPhysics(),
                          padding: const EdgeInsets.all(20),
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            int newIndex = index + 1;
                            return GestureDetector(
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: GestureDetector(
                                    onTap: () {
                                      // add newIndex to userNumbers
                                      if (!controller.isPlayed) {
                                        controller.addUserNumber(newIndex);
                                      }
                                    },
                                    child: Container(
                                       height: h * 0.08,
                                        width: w * 0.08,
                                        decoration: BoxDecoration(
                                          color: controller.userNumbers
                                              .contains(newIndex)
                                              ? Colors.green
                                              : Colors.white,
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                        child:
                                        Center(child: Text(newIndex.toString(),
                                          style: TextStyle(
                                              fontFamily: 'JosefinSans',
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700
                                          ),),)),
                                  ),
                                ));
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          )),
    );
  }
  Widget buildDrawerItems({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }){
    final color = Colors.black;
    final hoverColors = Colors.black45;
    return ListTile(
      leading: Icon(icon,color: color,),
      title: Text(text, style: TextStyle(color: color),),
      hoverColor: hoverColors,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int i) {
    switch (i) {
      case 0:
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => EditPage()));
      break;
    }
    switch (i) {
      case 1:
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => HistoryPage()));
        break;
    }
  }
}
