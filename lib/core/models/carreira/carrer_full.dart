import 'carrer_item.dart';

class CarrerFull {
  List<CarrerItem> items = [];

  CarrerFull();

  CarrerFull.fromJson(Map<String, dynamic> json) {
    if (json["items"] != null) {
      json["items"].forEach((element) {
        items.add(CarrerItem.fromJson(element));
      });
    }
  }
}
