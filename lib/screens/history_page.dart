import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lotto/controller/lotto_controller.dart';
import 'package:lotto/models/lotto_model.dart';
import 'package:lotto/utils/constant.dart';
import 'package:sticky_grouped_list/sticky_grouped_list.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    List<LottoModel> _lottoHistory = [];

    return Scaffold(
        appBar: AppBar(
          backgroundColor: kMyBlueColor,
          elevation: 0,
          leading: const BackButton(),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 10,
                width: 90,
                child: GetBuilder<LottoController>(builder: (controller) {
                  return ElevatedButton(
                    onPressed: () {
                      if (controller.lottoHistoryLength > 0) {
                        controller.resetLottoHistory();
                        Get.snackbar(
                          'History',
                          'History has been reset',
                          backgroundColor: kMyBlueColor,
                          colorText: Colors.white,
                          snackPosition: SnackPosition.BOTTOM,
                          duration: const Duration(seconds: 2),
                          margin: const EdgeInsets.all(10),
                          borderColor: kMyBlueColor,
                          borderWidth: 1,
                          icon: const Icon(
                            Icons.check,
                            color: Colors.white,
                          ),
                        );
                      } else {
                        Get.snackbar(
                          'History',
                          'History is empty',
                          backgroundColor: kMyBlueColor,
                          colorText: Colors.white,
                          snackPosition: SnackPosition.BOTTOM,
                          duration: const Duration(seconds: 2),
                          margin: const EdgeInsets.all(10),
                          borderColor: kMyBlueColor,
                          borderWidth: 1,
                          icon: const Icon(
                            Icons.check,
                            color: Colors.white,
                          ),
                        );
                      }
                    },
                    child: const Text('Reset'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      textStyle: const TextStyle(
                          fontFamily: 'JosefinSans',
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                  );
                }),
              ),
            )
          ],
        ),
        body: GetBuilder<LottoController>(builder: (controller) {
          return StickyGroupedListView<LottoModel, DateTime>(
            elements: controller.lottoHistory,
            order: StickyGroupedListOrder.ASC,
            groupBy: (LottoModel element) => DateTime(
                element.date!.year, element.date!.month, element.date!.day),
            groupComparator: (DateTime value1, DateTime value2) =>
                value2.compareTo(value1),
            itemComparator: (LottoModel element1, LottoModel element2) =>
                element1.date!.compareTo(element2.date!),
            floatingHeader: true,
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            // ScrollPhysics(),
            groupSeparatorBuilder: (LottoModel element) => SizedBox(
              height: 50,
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  width: 120,
                  decoration: BoxDecoration(
                    color: kMyBlueColor,
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '${element.date!.day}/${element.date!.month}/${element.date!.year}',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
            itemBuilder: (_, LottoModel element) => Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              elevation: 2.0,
              margin:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              child: Card(
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
                        for (int i = 0; i < 5; i++)
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              element.lottoNumbers!.elementAt(i).toString(),
                              style: const TextStyle(
                                  fontFamily: 'JosefinSans',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Wrap(
                      children: [
                        for (int i = 0; i < 5; i++)
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              element.userNumbers!.elementAt(i).toString(),
                              style: const TextStyle(
                                  fontFamily: 'JosefinSans',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(element.point!.toString())
                  ],
                ),
              ),
            ),
          );
        }));
  }
}
