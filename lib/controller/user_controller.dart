import 'package:get/get.dart';
import 'package:lotto/data/repo/user_repo.dart';

class UserController extends GetxController {
  final UserRepo userRepo;

  UserController({required this.userRepo});
  bool _isUserNamed = false;
  bool get isUserNamed => _isUserNamed;

  void getIsUserNamed() {
    _isUserNamed = userRepo.getIsUserNamed();
    update();
  }
  
  set isUserNamed(bool isUserNamed) {
    _isUserNamed = isUserNamed;
    userRepo.setIsUserNamed(isUserNamed);
    update();
  }


  void setUserName(String userName) {
    userRepo.setUserName(userName);
    _isUserNamed = true;
    update();
  }

}
