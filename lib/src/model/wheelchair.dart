class Wheelchair {
  final int id;
  final String title;
  final String maker;
  final int price;
  final String type;
  bool favorite;
  final String picture;

  Wheelchair({
    required this.id,
    required this.title,
    required this.maker,
    required this.price,
    required this.type,
    required this.favorite,
    required this.picture,
  });

  factory Wheelchair.fromJson(Map<String, dynamic> json) {
    return Wheelchair(
        id: json['id'],
        title: json['title'],
        maker: json['maker'],
        price: json['price'],
        type: json['type'],
        favorite: json['favorite'],
        picture: json['picture']);
  }
}