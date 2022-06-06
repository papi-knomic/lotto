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
    getUserPoints();
    return lottoListHistory;
  }

  void addToLottoHistoryList(LottoModel lottoModel) {
    List<String> lottoHistory = [];
    if (sharedPreferences.containsKey(AppConstants.LOTTO_HISTORY_LIST)) {
      lottoHistory =
          sharedPreferences.getStringList(AppConstants.LOTTO_HISTORY_LIST)!;
    }
    lottoHistory.add(jsonEncode(lottoModel.toJson()));
    getLottoHistoryList();

    sharedPreferences.setStringList(
        AppConstants.LOTTO_HISTORY_LIST, lottoHistory);
  }

  int getHistoryLength() {
    int historyLength = 0;
    if (sharedPreferences.containsKey(AppConstants.LOTTO_HISTORY_LIST)) {
      lottoHistory =
          sharedPreferences.getStringList(AppConstants.LOTTO_HISTORY_LIST)!;
      historyLength = lottoHistory.length;
    }
    return historyLength;
  }

  int getUserPoints() {
    //loop through lotto history and add points
    int userPoint = 0;
    if (sharedPreferences.containsKey(AppConstants.LOTTO_HISTORY_LIST)) {
      lottoHistory =
          sharedPreferences.getStringList(AppConstants.LOTTO_HISTORY_LIST)!;
    }
    for (var element in lottoHistory) {
      LottoModel lottoModel = LottoModel.fromJson(jsonDecode(element));
      userPoint += lottoModel.point!;
    }
    return userPoint;
  }
}
