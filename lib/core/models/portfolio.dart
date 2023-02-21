class Portfolio {
  String title = "";
  List<String> images = [];

  String description = "";
  String link = "";

  Portfolio();

  Portfolio.fromJson(Map<String, dynamic> json){
    title = json["title"] ?? "";
    description = json["description"] ?? "";
    link = json["link"] ?? "";
    if(json["images"] != null){
      json["images"].forEach((element) {
        images.add(element);
      });
    }
  }
}