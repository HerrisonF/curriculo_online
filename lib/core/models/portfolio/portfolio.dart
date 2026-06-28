class Portfolio {
  String title = "";
  List<String> images = [];

  String description = "";
  String link = "";
  String tecs = "";
  String modelo = "";

  Portfolio({
    this.title = "",
    this.images = const [],
    this.description = "",
    this.tecs = "",
    this.link = "",
    this.modelo = "",
  });

  factory Portfolio.fromJson(Map<String, dynamic> json) {
    return Portfolio(
      title: json["title"] ?? "",
      description: json["description"] ?? "",
      link: json["link"] ?? "",
      tecs: json["tecs"] ?? "",
      modelo: json["modelo"] ?? "",
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList()
          ?? [],
    );
  }
}
