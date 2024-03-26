// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'package:hotel_terexov/const/extenshions.dart';

class HotelModel {
  final int id;
  final String name;
  final List<int> freeRooms;
  final double distance;
  final String address;
  final num stars;

  HotelModel({
    required this.id,
    required this.name,
    required this.freeRooms,
    required this.distance,
    required this.address,
    required this.stars,
  });

  HotelModel copyWith({
    int? id,
    String? name,
    List<int>? freeRooms,
    double? distance,
    String? address,
    num? stars,
  }) {
    return HotelModel(
      id: id ?? this.id,
      name: name ?? this.name,
      freeRooms: freeRooms ?? this.freeRooms,
      distance: distance ?? this.distance,
      address: address ?? this.address,
      stars: stars ?? this.stars,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'suites_availability': freeRooms.toString(),
      'distance': distance,
      'address': address,
      'stars': stars,
    };
  }

  factory HotelModel.fromMap(Map<String, dynamic> map) {
    return HotelModel(
      id: map['id'] as int,
      name: map['name'] as String,
      freeRooms: (map['suites_availability'] as String).freeR,
      distance: map['distance'] as double,
      address: map['address'] as String,
      stars: map['stars'] as num,
    );
  }

  String toJson() => json.encode(toMap());

  factory HotelModel.fromJson(String source) =>
      HotelModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'HotelModel(id: $id, name: $name, freeRooms: $freeRooms, distance: $distance, address: $address, stars: $stars)';
  }

  @override
  bool operator ==(covariant HotelModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.freeRooms == freeRooms &&
        other.distance == distance &&
        other.address == address &&
        other.stars == stars;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        freeRooms.hashCode ^
        distance.hashCode ^
        address.hashCode ^
        stars.hashCode;
  }

  int get freeRoomEnt {
    return freeRooms.length;
  }
}
