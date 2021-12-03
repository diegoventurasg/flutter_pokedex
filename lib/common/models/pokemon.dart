class Pokemon {
  final String name;
  final String image;
  final List<String> type;
  final int id;
  final String num;

  factory Pokemon.fromMap(Map<String, dynamic> map) {
    return Pokemon(
      name: map['name'],
      image: map['img'],
      type: (map['type'] as List<dynamic>)
          .map(
            (e) => e as String,
          )
          .toList(),
      id: map['id'],
      num: map['num'],
    );
  }

  Pokemon({
    required this.name,
    required this.image,
    required this.type,
    required this.id,
    required this.num,
  });
}
