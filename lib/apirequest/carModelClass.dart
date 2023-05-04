class CarMakeModelClass {
  int? statuscode;
  List<Result>? result;

  CarMakeModelClass({this.statuscode, this.result});

  CarMakeModelClass.fromJson(Map<String, dynamic> json) {
    print(json.keys);
    statuscode = json['statuscode'];
    if (json['result'] != null) {
      result = <Result>[];
      json['result'].forEach((v) {
        result!.add(new Result.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['statuscode'] = this.statuscode;
    if (this.result != null) {
      data['result'] = this.result!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Result {
  int? carMakeId;
  String? carMakeTitle;
  String? dtCreated;
  String? dtModified;
  bool? isActive;
  int? displayOrder;
  Null? userId;
  Null? user;
  int? categoryId;
  Null? category;
  Null? carModels;

  Result(
      {this.carMakeId,
      this.carMakeTitle,
      this.dtCreated,
      this.dtModified,
      this.isActive,
      this.displayOrder,
      this.userId,
      this.user,
      this.categoryId,
      this.category,
      this.carModels});

  Result.fromJson(Map<String, dynamic> json) {
    carMakeId = json['carMakeId'];
    carMakeTitle = json['carMake_Title'];
    dtCreated = json['dtCreated'];
    dtModified = json['dtModified'];
    isActive = json['isActive'];
    displayOrder = json['displayOrder'];
    userId = json['userId'];
    user = json['user'];
    categoryId = json['categoryId'];
    category = json['category'];
    carModels = json['carModels'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['carMakeId'] = this.carMakeId;
    data['carMake_Title'] = this.carMakeTitle;
    data['dtCreated'] = this.dtCreated;
    data['dtModified'] = this.dtModified;
    data['isActive'] = this.isActive;
    data['displayOrder'] = this.displayOrder;
    data['userId'] = this.userId;
    data['user'] = this.user;
    data['categoryId'] = this.categoryId;
    data['category'] = this.category;
    data['carModels'] = this.carModels;
    return data;
  }
}
