// ignore_for_file: unnecessary_question_mark, prefer_void_to_null, unnecessary_this, unnecessary_new, prefer_collection_literals

class MyVehcileModel {
  int? id;
  int? vehicleTypeId;
  int? userId;
  String? model;
  String? color;
  int? boardNumber;
  String? vehicleImage;
  String? mechanicImage;
  String? boardImage;
  String? idImage;
  String? delegateImage;
  String? createdAt;
  String? updatedAt;
  Type? type;

  MyVehcileModel(
      {this.id,
      this.vehicleTypeId,
      this.userId,
      this.model,
      this.color,
      this.boardNumber,
      this.vehicleImage,
      this.mechanicImage,
      this.boardImage,
      this.idImage,
      this.delegateImage,
      this.createdAt,
      this.updatedAt,
      this.type});

  MyVehcileModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    vehicleTypeId = json['vehicle_type_id'];
    userId = json['user_id'];
    model = json['model'];
    color = json['color'];
    boardNumber = json['board_number'];
    vehicleImage = json['vehicle_image'];
    mechanicImage = json['mechanic_image'];
    boardImage = json['board_image'];
    idImage = json['id_image'];
    delegateImage = json['delegate_image'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    type = json['type'] != null ? new Type.fromJson(json['type']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['vehicle_type_id'] = this.vehicleTypeId;
    data['user_id'] = this.userId;
    data['model'] = this.model;
    data['color'] = this.color;
    data['board_number'] = this.boardNumber;
    data['vehicle_image'] = this.vehicleImage;
    data['mechanic_image'] = this.mechanicImage;
    data['board_image'] = this.boardImage;
    data['id_image'] = this.idImage;
    data['delegate_image'] = this.delegateImage;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.type != null) {
      data['type'] = this.type!.toJson();
    }
    return data;
  }
}

class Type {
  int? id;
  String? name;
  Null? createdAt;
  Null? updatedAt;

  Type({this.id, this.name, this.createdAt, this.updatedAt});

  Type.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
