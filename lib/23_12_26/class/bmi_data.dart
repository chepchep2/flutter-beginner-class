// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class BmiData {
  final double height;
  final double weight;

  BmiData({
    required this.height,
    required this.weight,
  });

  BmiData copyWith({
    double? height,
    double? weight,
  }) {
    return BmiData(
      height: height ?? this.height,
      weight: weight ?? this.weight,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'height': height,
      'weight': weight,
    };
  }

  factory BmiData.fromJson(Map<String, dynamic> map) {
    return BmiData(
      height: map['height'] as double,
      weight: map['weight'] as double,
    );
  }

  @override
  String toString() => 'BmiData(height: $height, weight: $weight)';

  @override
  bool operator ==(covariant BmiData other) {
    if (identical(this, other)) return true;

    return other.height == height && other.weight == weight;
  }
}
