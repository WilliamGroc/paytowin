class CardModel {
  late int id;
  late String name;
  late String description;
  late int strength;
  late int shield;
  late String image;

  CardModel(
      {required this.id,
      required this.name,
      required this.description,
      required this.strength,
      required this.shield,
      required this.image});

  CardModel.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.name = json['name'];
    this.description = json['description'];
    this.strength = json['strength'];
    this.shield = json['shield'];
    this.image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['description'] = this.description;
    data['strength'] = this.strength;
    data['shield'] = this.shield;
    data['image'] = this.image;
    return data;
  }
}
