class CarrerItem {
  String title = "";
  String subTitle = "";
  String description = "";
  String duration = "";
  int iconCode = 0;

  CarrerItem();

  CarrerItem.fromJson(Map<String, dynamic> json){
    title = json["title"] ?? "";
    subTitle = json["subTitle"] ?? "";
    description = json["description"] ?? "";
    duration = json["duration"] ?? "";
    iconCode = int.parse(json["iconCode"]) ?? 0;
  }
}