import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Star {
  String title;
  String subTitle;
  String imageUrl;
  String description;

  Star({
    required this.title,
    required this.subTitle,
    required this.imageUrl,
    required this.description,
  });

  Star copyWith({
    String? title,
    String? subTitle,
    String? imageUrl,
    String? description,
  }) {
    return Star(
      title: title ?? this.title,
      subTitle: subTitle ?? this.subTitle,
      imageUrl: imageUrl ?? this.imageUrl,
      description: description ?? this.description,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'subTitle': subTitle,
      'imageUrl': imageUrl,
      'description': description,
    };
  }

  factory Star.fromMap(Map<String, dynamic> map) {
    return Star(
      title: map['title'] as String,
      subTitle: map['subTitle'] as String,
      imageUrl: map['imageUrl'] as String,
      description: map['description'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Star.fromJson(String source) =>
      Star.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Star(title: $title, subTitle: $subTitle, imageUrl: $imageUrl, description: $description)';
  }

  @override
  bool operator ==(covariant Star other) {
    if (identical(this, other)) return true;

    return other.title == title &&
        other.subTitle == subTitle &&
        other.imageUrl == imageUrl &&
        other.description == description;
  }

  @override
  int get hashCode {
    return title.hashCode ^
        subTitle.hashCode ^
        imageUrl.hashCode ^
        description.hashCode;
  }
}
