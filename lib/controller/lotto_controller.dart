import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lotto/data/repo/lotto_repo.dart';

import '../models/lotto_model.dart';

class LottoController extends GetxController {
  final LottoRepo lottoRepo;

  LottoController({required this.lottoRepo});

  Set<int> _lottoNumbers = <int>{};
  Set<int> get lottoNumbers => _lottoNumbers;
  // Set for users number
  final Set<int> _userNumbers = <int>{};
  Set<int> get userNumbers => _userNumbers;
  //bool for if user has played
  bool _isPlayed = false;
  bool get isPlayed => _isPlayed;
  //length for user numbers
  int get userNumbersLength => _userNumbers.length;
  //get lotto history
  List<LottoModel> _lottoHistory = [];
  List<LottoModel> get lottoHistory => _lottoHistory;

  void getLottoNumbers() {
    lottoRepo.generateLottoNumbers();
    _lottoNumbers = lottoRepo.lottoNumbers;
    _isPlayed = false;
    _userNumbers.clear();
    update();
  }

  //add user number from home
  void addUserNumber(int number) {
    //check if number is already in userNumbers
    if (!_userNumbers.contains(number)) {
      if (_userNumbers.length < 6) {
        _userNumbers.add(number);
        update();
      } else {
        Get.snackbar('Error', 'You can only choose 6 numbers',
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.red,
            colorText: Colors.white,
            borderRadius: 10,
            margin: const EdgeInsets.all(10),
            borderColor: Colors.red,
            borderWidth: 2);
      }
    } else {
      removeUserNumber(number);
    }
  }

  void removeUserNumber(int number) {
    _userNumbers.remove(number);
    update();
  }

  //check userNumbers and lottoNumbers for matches
  void checkNumbers() {
    if (_userNumbers.length == 6) {
      int point = 0;
      for (int i = 0; i < 6; i++) {
        if (_userNumbers.contains(_lottoNumbers.elementAt(i))) {
          point++;
        }
      }
      _isPlayed = true;
      LottoModel lottoModel = LottoModel(
          lottoNumbers: lottoNumbers, userNumbers: userNumbers, point: point);
      saveLottoModel(lottoModel);
      update();
      Get.snackbar('You got $point points', '',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.green,
          colorText: Colors.white,
          borderRadius: 10,
          margin: const EdgeInsets.all(10),
          borderColor: Colors.green,
          borderWidth: 2);
    } else {
      Get.snackbar('Error', 'You need to choose 6 numbers',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          colorText: Colors.white,
          borderRadius: 10,
          margin: const EdgeInsets.all(10),
          borderColor: Colors.red,
          borderWidth: 2);
    }
  }

  //save lottoModel to lottoHistory
  void saveLottoModel(LottoModel lottoModel) {
    lottoRepo.addToLottoHistoryList(lottoModel);
    getLottoHistory();
  }

  //get lottoHistory from lottoRepo
  void getLottoHistory() {
    _lottoHistory = lottoRepo.getLottoHistoryList();
    print(_lottoHistory);
    update();
  }
}
