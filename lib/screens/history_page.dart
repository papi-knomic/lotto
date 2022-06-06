import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lotto/controller/lotto_controller.dart';
import 'package:lotto/screens/lotto_drawer.dart';
import 'package:lotto/utils/constant.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kMyBlueColor,
        elevation: 0,
      ),
      drawer: const LottoDrawer(),
      body: GetBuilder<LottoController>(
        builder: (controller) {
          return ListView.builder(
              itemCount: controller.lottoHistory.length,
              itemBuilder: (BuildContext context, int index) {
                // return card with lotto numbers, user numbers and points
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 4,
                  shadowColor: Colors.black54,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Wrap(
                        children: [
                          for (int i = 0;
                              i <
                                  controller
                                      .lottoHistory[index].lottoNumbers!.length;
                              i++)
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                '${controller.lottoHistory[index].lottoNumbers!.elementAt(i)}',
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Wrap(
                        children: [
                          for (int i = 0;
                              i <
                                  controller
                                      .lottoHistory[index].userNumbers!.length;
                              i++)
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                '${controller.lottoHistory[index].userNumbers!.elementAt(i)}',
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(controller.lottoHistory[index].point!.toString())
                    ],
                  ),
                );
              });
        },
      ),
    );
  }
}
