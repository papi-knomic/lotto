import 'dart:convert';
import 'dart:math';

import 'package:lotto/models/lotto_model.dart';
import 'package:lotto/utils/app_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LottoRepo {
  final SharedPreferences sharedPreferences;
  LottoRepo({required this.sharedPreferences});

  final Set<int> _lottoNumbers = <int>{};
  Set<int> get lottoNumbers => _lottoNumbers;
  List<String> lottoHistory = [];
  int _historyLength = 0;
  int get historyLength => _historyLength;

  void generateLottoNumbers() {
    _lottoNumbers.clear();
    while (_lottoNumbers.length < 6) {
      _lottoNumbers.add(Random().nextInt(60) + 1);
    }
  }

  List<LottoModel> getLottoHistoryList() {
    // sharedPreferences.remove(AppConstants.LOTTO_HISTORY_LIST);
    List<String> lottoHistory = [];
    if (sharedPreferences.containsKey(AppConstants.LOTTO_HISTORY_LIST)) {
      lottoHistory =
          sharedPreferences.getStringList(AppConstants.LOTTO_HISTORY_LIST)!;
    }
    List<LottoModel> lottoListHistory = [];

    for (var element in lottoHistory) {
      lottoListHistory.add(LottoModel.fromJson(jsonDecode(element)));
    }
    getHistoryLength();
    return lottoListHistory;
  }

  void addToLottoHistoryList(LottoModel lottoModel) {
    if (sharedPreferences.containsKey(AppConstants.LOTTO_HISTORY_LIST)) {
      lottoHistory =
          sharedPreferences.getStringList(AppConstants.LOTTO_HISTORY_LIST)!;
      print(lottoHistory);
    }
    lottoHistory.add(jsonEncode(lottoModel.toJson()));
    getLottoHistoryList();

    sharedPreferences.setStringList(
        AppConstants.LOTTO_HISTORY_LIST, lottoHistory);
  }

  void getHistoryLength() {
    if (sharedPreferences.containsKey(AppConstants.LOTTO_HISTORY_LIST)) {
      lottoHistory =
          sharedPreferences.getStringList(AppConstants.LOTTO_HISTORY_LIST)!;
      _historyLength = lottoHistory.length;
    }
  }
}
