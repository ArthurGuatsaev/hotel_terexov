// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'hotel_cubit.dart';

class HotelState {
  final HotelFullModel? hotel;
  final LoadStatus status;

  HotelState({this.hotel, this.status = LoadStatus.empty});

  HotelState copyWith({
    HotelFullModel? hotel,
    LoadStatus? status,
  }) {
    return HotelState(
      hotel: hotel ?? this.hotel,
      status: status ?? this.status,
    );
  }
}

enum LoadStatus {
  empty,
  loading,
  load,
}
