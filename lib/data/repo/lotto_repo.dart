import 'dart:math';

import 'package:shared_preferences/shared_preferences.dart';

class LottoRepo {
  final SharedPreferences sharedPreferences;
  LottoRepo({required this.sharedPreferences});

  Set<int> _lottoNumbers = Set<int>();
  Set<int> get lottoNumbers => _lottoNumbers;
  List<Set> lottoHistory = [];

  void generateLottoNumbers() {
    _lottoNumbers.clear();
    while (_lottoNumbers.length < 6) {
      _lottoNumbers.add(Random().nextInt(60));
    }
  }
}
