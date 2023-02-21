class CarrerItem {
  String title = "";
  String subTitle = "";
  String description = "";
  String duration = "";

  CarrerItem();

  CarrerItem.fromJson(Map<String, dynamic> json){
    title = json["title"] ?? "";
    subTitle = json["subTitle"] ?? "";
    description = json["description"] ?? "";
    duration = json["duration"] ?? "";
  }
}