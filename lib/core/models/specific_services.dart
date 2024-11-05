// ignore_for_file: unnecessary_this, prefer_initializing_formals

class SpecificServicesModel {
  String? id;
  String? imgUrl;
  String? title;
  String? time;
  String? price;
  String? status;

  SpecificServicesModel(
      {this.id, this.imgUrl, this.title, this.time, this.price, this.status});

  SpecificServicesModel.fromJson(json, id) {
    this.id = id;
    this.imgUrl = json["imgUrl"];
    this.title = json["title"];
    this.time = json["time"];
    this.price = json["price"];
  }
}
