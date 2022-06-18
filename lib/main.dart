import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lotto/controller/lotto_controller.dart';
import 'package:lotto/controller/user_controller.dart';
import 'package:lotto/helper/dependencies.dart' as dep;
import 'package:lotto/screens/splash_screen.dart';
import 'package:lotto/utils/themes.dart';

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
    Get.find<LottoController>().getLottoHistory();
    Get.find<UserController>().getUserName();
    return const GetMaterialApp(
      // theme: Themes.lightTheme,
      // darkTheme: Themes.darkTheme,
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
