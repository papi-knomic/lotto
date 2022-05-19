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

  void setUserPoint(int userPoint) {
    this.userPoint = userPoint;
    sharedPreferences.setInt('userPoint', userPoint);
    getUserPoint();
  }

  void setIsUserNamed(bool isUserNamed) {
    this.isUserNamed = isUserNamed;
    sharedPreferences.setBool('isUserNamed', isUserNamed);
    getIsUserNamed();
  }

  String getUserName() {
    userName = "";
    if (sharedPreferences.containsKey("userName")) {
      userName = sharedPreferences.getString('userName')!;
    }
    return userName;
  }

  int getUserPoint() {
    userPoint = 0;
    if (sharedPreferences.containsKey("userPoint")) {
      userPoint = sharedPreferences.getInt('userPoint')!;
    }
    return userPoint;
  }

  bool getIsUserNamed() {
    isUserNamed = false;
    if (sharedPreferences.containsKey("isUserNamed")) {
      isUserNamed = sharedPreferences.getBool('isUserNamed')!;
    }
    return isUserNamed;
  }
}
