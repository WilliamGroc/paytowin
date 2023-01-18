class CardModel {
  late String? id;
  late String? name;
  late String? text;
  late String? manaCost;
  late String? type;
  late List<String>? colors;
  late String? power;
  late String? toughness;
  late String? imageUrl;

  CardModel({this.id, this.name, this.text, this.manaCost, this.type, this.colors, this.power, this.toughness, this.imageUrl});

  CardModel.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.name = json['name'];
    this.text = json['text'];
    this.manaCost = json['manaCost'];
    this.type = json['type'];
    this.colors = List.from(json['colors']).cast<String>();
    this.power = json['power'];
    this.toughness = json['toughness'];
    this.imageUrl = json['imageUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = this.id;
    data['name'] = this.name;
    data['text'] = this.text;
    data['manaCost'] = this.manaCost;
    data['type'] = this.type;
    data['colors'] = this.colors;
    data['power'] = this.power;
    data['toughness'] = this.toughness;
    data['imageUrl'] = this.imageUrl;
    return data;
  }

  @override
  String toString() {
    return '${this.id}';
  }
}
