import 'package:get/get.dart';
import 'package:lotto/data/repo/lotto_repo.dart';

class LottoController extends GetxController {
  final LottoRepo lottoRepo;

  LottoController({required this.lottoRepo});

  Set<int> _lottoNumbers = Set<int>();
  Set<int> get lottoNumbers => _lottoNumbers;

  void getLottoNumbers() {
    lottoRepo.generateLottoNumbers();
    _lottoNumbers = lottoRepo.lottoNumbers;
    update();
  }
}
