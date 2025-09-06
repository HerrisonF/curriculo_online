class Portfolio {
  String title = "";
  List<String> images = [];

  String description = "";
  String link = "";

  Portfolio({
    this.title = "",
    this.images = const [],
    this.description = "",
    this.link = "",
  });

  factory Portfolio.fromJson(Map<String, dynamic> json) {
    return Portfolio(
      title: json["title"] ?? "",
      description: json["description"] ?? "",
      link: json["link"] ?? "",
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList()
          ?? [],
    );
  }
}
