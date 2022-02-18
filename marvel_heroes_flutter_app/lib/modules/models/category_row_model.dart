import 'dart:convert';
import 'package:collection/collection.dart';

import 'character_model.dart';

class CaterogyRowModel {
  final String categoryName;
  final List<CharacterModel> characters;

  CaterogyRowModel({
    required this.categoryName,
    required this.characters,
  });

  CaterogyRowModel copyWith({
    String? categoryName,
    List<CharacterModel>? characters,
  }) {
    return CaterogyRowModel(
      categoryName: categoryName ?? this.categoryName,
      characters: characters ?? this.characters,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'categoryName': categoryName,
      'characters': characters.map((x) => x.toMap()).toList(),
    };
  }

  factory CaterogyRowModel.fromMap(Map<String, dynamic> map) {
    return CaterogyRowModel(
      categoryName: map['categoryName'] ?? '',
      characters: List<CharacterModel>.from(
          map['characters']?.map((x) => CharacterModel.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory CaterogyRowModel.fromJson(String source) =>
      CaterogyRowModel.fromMap(json.decode(source));

  @override
  String toString() =>
      'CaterogyRowModel(categoryName: $categoryName, characters: $characters)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is CaterogyRowModel &&
        other.categoryName == categoryName &&
        listEquals(other.characters, characters);
  }

  @override
  int get hashCode => categoryName.hashCode ^ characters.hashCode;
}
