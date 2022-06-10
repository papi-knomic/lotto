class LottoModel {
  Set<int>? lottoNumbers;
  Set<int>? userNumbers;
  int? point;
  DateTime? date;

  LottoModel(
      {required this.lottoNumbers,
      required this.userNumbers,
      required this.point,
      required this.date});

  LottoModel.fromJson(Map<String, dynamic> json) {
    lottoNumbers = Set<int>.from(json['lottoNumbers']);
    userNumbers = Set<int>.from(json['userNumbers']);
    point = json['point'];
    date = DateTime.parse(json['date']);
  }

  Map<String, dynamic> toJson() => {
        'lottoNumbers': lottoNumbers!.toList(),
        'userNumbers': userNumbers!.toList(),
        'point': point,
        'date' : date!.toIso8601String()
      };
}
