import 'package:get/get.dart';
import 'package:lotto/controller/lotto_controller.dart';
import 'package:lotto/data/repo/lotto_repo.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../controller/user_controller.dart';
import '../data/repo/user_repo.dart';

Future<void> init() async {
  final sharedPreferences = await SharedPreferences.getInstance();

  Get.lazyPut(() => sharedPreferences);

  //repos
  Get.lazyPut(() => UserRepo(sharedPreferences: Get.find()));
  Get.lazyPut(() => LottoRepo(sharedPreferences: Get.find()));

  //controllers
  Get.lazyPut(() => UserController(userRepo: Get.find()));
  Get.lazyPut(() => LottoController(lottoRepo: Get.find()));
}
