class CarrerItem {
  String title;
  String subTitle;
  String description;
  String duration;
  int iconCode;

  CarrerItem({
    this.title = "",
    this.subTitle = "",
    this.description = "",
    this.duration = "",
    this.iconCode = 0,
  });

  factory CarrerItem.fromJson(Map<String, dynamic> json) {
    return CarrerItem(
      title: json["title"] ?? "",
      subTitle: json["subTitle"] ?? "",
      description: json["description"] ?? "",
      duration: json["duration"] ?? "",
      iconCode: int.tryParse(json["iconCode"]) ?? 0,
    );
  }
}
