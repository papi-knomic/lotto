import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lotto/controller/lotto_controller.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Lotto'),
          centerTitle: true,
        ),
        body: GetBuilder<LottoController>(
          builder: (controller) {
            return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Wrap(
                    runSpacing: 10,
                    children: [
                      for (int number in controller.lottoNumbers)
                        Chip(label: Text(number.toString())),
                    ],
                  ),
                ]);
          },
        ));
  }
}
