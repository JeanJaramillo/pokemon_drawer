class pokedext {
  int id;
  String num;
  String name;
  String img;
  List<String> type;
  String height;
  String weight;
  String candy;
  int candy_count;
  String eegg;
  int spawn_chance;
  int avg_spawns;
  String spawn_time;
  List<int> multipliers;
  List<String> weaknesses;
  List<String> next_evolution;

  pokedext(
      {required this.id,
      required this.num,
      required this.name,
      required this.img,
      required this.type,
      required this.height,
      required this.weight,
      required this.candy,
      required this.candy_count,
      required this.eegg,
      required this.spawn_chance,
      required this.avg_spawns,
      required this.spawn_time,
      required this.multipliers,
      required this.weaknesses,
      required this.next_evolution});

  static pokedext fromJson(Map<String, dynamic> json) {
    return pokedext(
      id: json['id'] as int,
      num: (json['num'] as String),
      name: json['name'] as String,
      img: json['img'] as String,
      type: (json['type'] as List).map((e) => e as String).toList(),
      weight: json['weight'] as String,
      height: json['height'] as String,
      candy: json['candy'] as String,
      candy_count: json['candy_count'] as int,
      eegg: json['eegg'] as String,
      spawn_chance: json['spawn_chance'] as int,
      avg_spawns: (json['avg_spawns'] as int),
      spawn_time: json['spawn_time'] as String,
      multipliers: (json['multipliers'] as List).map((e) => e as int).toList(),
      weaknesses: (json['weaknesses'] as List).map((e) => e as String).toList(),
      next_evolution: (json['next_evolution'] as List).map((e) => e as String).toList(),
    );
  }

  String getImage() {
    return this.img;
  }
}
