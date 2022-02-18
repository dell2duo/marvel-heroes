import 'dart:convert';

class CharacterModel {
  final String name;
  final String imageUrl;
  final String description;
  final String id;

  CharacterModel({
    required this.name,
    required this.imageUrl,
    required this.description,
    required this.id,
  });

  CharacterModel copyWith({
    String? name,
    String? imageUrl,
    String? description,
    String? id,
  }) {
    return CharacterModel(
      name: name ?? this.name,
      imageUrl: imageUrl ?? this.imageUrl,
      description: description ?? this.description,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'imageUrl': imageUrl,
      'description': description,
      'id': id,
    };
  }

  factory CharacterModel.fromMap(Map<String, dynamic> map) {
    return CharacterModel(
      name: map['name'] ?? '',
      imageUrl: map['imageUrl'] ?? '',
      description: map['description'] ?? '',
      id: map['id'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory CharacterModel.fromJson(String source) =>
      CharacterModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CharacterModel(name: $name, imageUrl: $imageUrl, description: $description, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CharacterModel &&
        other.name == name &&
        other.imageUrl == imageUrl &&
        other.description == description &&
        other.id == id;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        imageUrl.hashCode ^
        description.hashCode ^
        id.hashCode;
  }
}
