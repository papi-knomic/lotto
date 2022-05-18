class LottoModel {
  Set<int>? lottoNumbers;
  Set<int>? userNumbers;

  LottoModel({required this.lottoNumbers, required this.userNumbers});

  LottoModel.fromJson(Map<String, dynamic> json){
    lottoNumbers = Set<int>.from(json['lottoNumbers']);
    userNumbers = Set<int>.from(json['userNumbers']);
  }

  Map<String, dynamic> toJson() => {
    'lottoNumbers': lottoNumbers!.toList(),
    'userNumbers': userNumbers!.toList(),
  };
}
