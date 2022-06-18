import 'package:get/get.dart';
import 'package:lotto/data/repo/user_repo.dart';

class UserController extends GetxController {
  final UserRepo userRepo;

  UserController({required this.userRepo});

  String _userName = '';
  String get userName => _userName;

  void setUserName(String userName) {
    _userName = userName;
    userRepo.setUserName(userName);
    update();
  }

  void getUserName() {
    _userName = userRepo.getUserName();
    update();
  }
}
