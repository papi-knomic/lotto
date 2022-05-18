import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lotto/controller/lotto_controller.dart';
import 'package:lotto/helper/dependencies.dart' as dep;
import 'package:lotto/screens/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     Get.find<LottoController>().getLottoNumbers();
    return GetMaterialApp(
      home: Home(),
    );
  }
}
