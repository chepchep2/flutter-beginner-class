import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Star {
  String title;
  String subTitle;
  String imageUrl;
  String description;
  bool isFavorite;

  Star({
    required this.title,
    required this.subTitle,
    required this.imageUrl,
    required this.description,
    required this.isFavorite,
  });

  Star copyWith({
    String? title,
    String? subTitle,
    String? imageUrl,
    String? description,
    bool? isFavorite,
  }) {
    return Star(
      title: title ?? this.title,
      subTitle: subTitle ?? this.subTitle,
      imageUrl: imageUrl ?? this.imageUrl,
      description: description ?? this.description,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'subTitle': subTitle,
      'imageUrl': imageUrl,
      'description': description,
      'isFavorite': isFavorite,
    };
  }

  factory Star.fromMap(Map<String, dynamic> map) {
    return Star(
      title: map['title'] as String,
      subTitle: map['subTitle'] as String,
      imageUrl: map['imageUrl'] as String,
      description: map['description'] as String,
      isFavorite: map['isFavorite'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory Star.fromJson(String source) =>
      Star.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Star(title: $title, subTitle: $subTitle, imageUrl: $imageUrl, description: $description, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(covariant Star other) {
    if (identical(this, other)) return true;

    return other.title == title &&
        other.subTitle == subTitle &&
        other.imageUrl == imageUrl &&
        other.description == description &&
        other.isFavorite == isFavorite;
  }

  @override
  int get hashCode {
    return title.hashCode ^
        subTitle.hashCode ^
        imageUrl.hashCode ^
        description.hashCode ^
        isFavorite.hashCode;
  }
}
