import 'package:shared_preferences/shared_preferences.dart';

class UserRepo {
  final SharedPreferences sharedPreferences;
  UserRepo({required this.sharedPreferences});

  String userName = '';
  int userPoint = 0;
  bool isUserNamed = false;

  void setUserName(String userName) {
    this.userName = userName;
    sharedPreferences.setString('userName', userName);
    getUserName();
  }

  String getUserName() {
    userName = "Anonymous";
    if (sharedPreferences.containsKey("userName")) {
      userName = sharedPreferences.getString('userName')!;
    }
    return userName;
  }
}
