import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:lotto/controller/lotto_controller.dart';

import '../utils/constant.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}


class _HomeState extends State<Home> {

  final scrollController = ScrollController(initialScrollOffset: 0);

  @override
  Widget build(BuildContext context) {
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
              return SingleChildScrollView(
                child: Container(
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        'Lotto',
                        style: TextStyle(
                            fontFamily: 'Pacifico',
                            fontSize: 50,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        'Choose 6 numbers',
                        style: TextStyle(
                            fontFamily: 'JosefinSans',
                            fontSize: 40,
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      GetBuilder<LottoController>(builder: (controller) {
                        return Wrap(
                          spacing: 10,
                          children: [
                            for (int number in controller.lottoNumbers)
                              Container(
                                width: 50,
                                height: 70,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: const [
                                      BoxShadow(
                                          color: kMyBlueColor,
                                          blurRadius: 7,
                                          offset: Offset(0, 3))
                                    ]),
                                child: Center(child: Text(number.toString())),
                              ),
                          ],
                        );
                      }),
                      const SizedBox(
                        height: 40,
                      ),
                      SizedBox(
                        height: 50,
                        width: 150,
                        child: ElevatedButton(
                          onPressed: () {},
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
                        height: 40,
                      ),
                      Container(
                        height: 80,
                        width: 300,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              color: kMyBlueColor,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 5, childAspectRatio: (1 / 1)),
                        itemCount: 60,
                        controller: scrollController,
                        scrollDirection: Axis.vertical,
                        physics: ScrollPhysics(),
                        padding: EdgeInsets.all(20),
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Container(
                                  height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(30),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: kMyBlueColor,
                                      blurRadius: 7,
                                      offset: Offset(0, 3),
                                    ),
                                  ],
                                    ),
                                    child: Center(child: Text(index.toString()))),
                              ));
                        },
                      ),
                    ],
                  ),
                ),
              );
            },
          )),
    );
  }
}
