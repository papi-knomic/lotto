class LottoModel {
  Set<int>? lottoNumbers;
  Set<int>? userNumbers;
  int? point;

  LottoModel({required this.lottoNumbers, required this.userNumbers, required this.point});

  LottoModel.fromJson(Map<String, dynamic> json) {
    lottoNumbers = Set<int>.from(json['lottoNumbers']);
    userNumbers = Set<int>.from(json['userNumbers']);
    point = json['point'];
    
  }

  Map<String, dynamic> toJson() => {
        'lottoNumbers': lottoNumbers!.toList(),
        'userNumbers': userNumbers!.toList(),
        'point': point,
      };
}
