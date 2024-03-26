// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class HotelFullModel {
  final int id;
  final String name;
  final String address;
  final num stars;
  final double distance;
  final String? image;
  HotelFullModel({
    required this.id,
    required this.name,
    required this.address,
    required this.stars,
    required this.distance,
    this.image,
  });

  HotelFullModel copyWith({
    int? id,
    String? name,
    String? address,
    num? stars,
    double? distance,
    String? image,
  }) {
    return HotelFullModel(
      id: id ?? this.id,
      name: name ?? this.name,
      address: address ?? this.address,
      stars: stars ?? this.stars,
      distance: distance ?? this.distance,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'address': address,
      'stars': stars,
      'distance': distance,
      'image': image,
    };
  }

  factory HotelFullModel.fromMap(Map<String, dynamic> map) {
    return HotelFullModel(
      id: map['id'] as int,
      name: map['name'] as String,
      address: map['address'] as String,
      stars: map['stars'] as num,
      distance: map['distance'] as double,
      image: map['image'] != null ? map['image'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory HotelFullModel.fromJson(String source) =>
      HotelFullModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'HotelFullModel(id: $id, name: $name, address: $address, stars: $stars, distance: $distance, image: $image)';
  }

  @override
  bool operator ==(covariant HotelFullModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.address == address &&
        other.stars == stars &&
        other.distance == distance &&
        other.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        address.hashCode ^
        stars.hashCode ^
        distance.hashCode ^
        image.hashCode;
  }
}
