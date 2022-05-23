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
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            SizedBox(height: 25,),
            Container(
              height: 200,
              width: 500,
              color: Colors.brown,
            ),

          ],
        ),
      ),
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
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 30,),
                        Text('Lotto',
                          style: TextStyle(
                            fontFamily: 'Pacifico',
                            fontSize: 50,
                            fontWeight: FontWeight.w400
                          ),),
                        SizedBox(height: 30,),
                        Text('Choose 6 numbers',
                        style: TextStyle(
                            fontFamily: 'JosefinSans',
                            fontSize: 40,
                            fontWeight: FontWeight.w700
                        ),),
                        SizedBox(height: 50,),
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
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        SizedBox(
                          height: 50,
                          width: 150,
                          child: ElevatedButton(
                            onPressed: (){},
                            child: Text('Play'),
                            style: ElevatedButton.styleFrom(
                              primary: kMyBlueColor,
                              textStyle: TextStyle(
                                fontFamily: 'Pacifico',
                                fontWeight: FontWeight.w400,
                                fontSize: 25
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)
                              )
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Container(
                          height: 80,
                          width: 300,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                              color: kMyBlueColor,
                              blurRadius: 7,
                              offset: Offset(0,3)
                              ),]
                          )
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
