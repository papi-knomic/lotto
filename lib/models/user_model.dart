class UserModel {
  String? name;
  int? point;

  UserModel({this.name, this.point});

  UserModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    point = json['point'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['point'] = this.point;
    return data;
  }
}
