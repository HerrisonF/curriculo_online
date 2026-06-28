class Carreira {
  String title;
  String subTitle;
  String description;
  String duration;
  int iconCode;

  Carreira({
    this.title = "",
    this.subTitle = "",
    this.description = "",
    this.duration = "",
    this.iconCode = 0,
  });

  factory Carreira.fromJson(Map<String, dynamic> json) {
    return Carreira(
      title: json["title"] ?? "",
      subTitle: json["subTitle"] ?? "",
      description: json["description"] ?? "",
      duration: json["duration"] ?? "",
      iconCode: int.tryParse(json["iconCode"]) ?? 0,
    );
  }
}
