import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lotto/controller/lotto_controller.dart';
import 'package:lotto/screens/user_pop.dart';

import '../constant.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   backgroundColor: kMyBlueColor,
        //   title: const Text('Lotto',
        //   style: TextStyle(fontSize: 30),),
        //   centerTitle: true,
        //   actions: [
        //     IconButton(onPressed: () {
        //       showModalBottomSheet(
        //           shape: RoundedRectangleBorder(
        //             borderRadius: BorderRadius.only(
        //               topLeft: Radius.circular(30), topRight: Radius.circular(30),
        //             ),
        //           ),
        //           isScrollControlled: true,
        //           context: context, builder: (context)
        //       => UserBottomSheet());
        //     },
        //       icon: Icon(Icons.mode_edit),),
        //     IconButton(onPressed: () {},
        //       icon: Icon( Icons.history_outlined),),
        //   ],
        // ),
        body: GetBuilder<LottoController>(
          builder: (controller) {
            return SafeArea(
              child: Container(
                color: kMyBlueColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 30,),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text('Choose 6 numbers',
                          style: kFontSize,),
                        ),
                        SizedBox(height: 200,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 50,
                              height: 70,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: kMyBlueColor,
                                    blurRadius: 7,
                                    offset: Offset(0,3)
                                  )
                                ]
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10, top: 10),
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                  style: kFontSize,
                                  ),
                                ),
                              ),
                            Container(
                              width: 50,
                              height: 70,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                        color: kMyBlueColor,
                                        blurRadius: 7,
                                        offset: Offset(0,3)
                                    )
                                  ]
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10, top: 10),
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                  style: kFontSize,
                                ),
                              ),
                            ),
                            Container(
                              width: 50,
                              height: 70,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                        color: kMyBlueColor,
                                        blurRadius: 7,
                                        offset: Offset(0,3)
                                    )
                                  ]
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10, top: 10),
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                  style: kFontSize,
                                ),
                              ),
                            ),
                            Container(
                              width: 50,
                              height: 70,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                        color: kMyBlueColor,
                                        blurRadius: 7,
                                        offset: Offset(0,3)
                                    )
                                  ]
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10, top: 10),
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                  style: kFontSize,
                                ),
                              ),
                            ),
                            Container(
                              width: 50,
                              height: 70,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                        color: kMyBlueColor,
                                        blurRadius: 7,
                                        offset: Offset(0,3)
                                    )
                                  ]
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10, top: 10),
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                  style: kFontSize,
                                ),
                              ),
                            ),
                            Container(
                              width: 50,
                              height: 70,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                        color: kMyBlueColor,
                                        blurRadius: 7,
                                        offset: Offset(0,3)
                                    )
                                  ]
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10, top: 10),
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                  style: kFontSize,
                                ),
                              ),
                            ),

                          ],
                        )
                        // Wrap(
                        //   runSpacing: 10,
                        //   children: [
                        //     for (int number in controller.lottoNumbers)
                        //       Chip(label: Text(number.toString())),
                        //   ],
                        // ),
                      ]),
              ),
            );
          },
        ));
  }
}
