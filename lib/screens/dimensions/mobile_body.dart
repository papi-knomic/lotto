import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:lotto/controller/lotto_controller.dart';
import 'package:lotto/utils/constant.dart';


class MobileBody extends StatefulWidget {
  const MobileBody({Key? key}) : super(key: key);

  @override
  _MobileBodyState createState() => _MobileBodyState();
}
 final scrollController = ScrollController(initialScrollOffset: 0);

class _MobileBodyState extends State<MobileBody> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          drawer: Drawer(
            backgroundColor: Colors.white,
            child: Column(
              children: [
                const SizedBox(
                height: 25,
                ),
                Container(
                  height: 200,
                  width: 500,
                  color: Colors.brown,
                ),
              ],
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
                    const Text(
                      'Lotto',
                      style: TextStyle(
                          fontFamily: 'Pacifico',
                          fontSize: 50,
                          fontWeight: FontWeight.w400),
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
                          controller.checkNumbers();
                        },
                        child: const Text('Play'),
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
}
