class ServicesModel {
  String? id;
  String? image;
  String? title;
  ServicesModel({this.id, this.image, this.title});

  ServicesModel.fromJson(json, id) {
    this.id = id;
    image = json["image"];
    title = json["title"];
  }
}
