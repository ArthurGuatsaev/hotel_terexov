// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'main_h_bloc.dart';

class MainHState {
  final Map<String, HotelModel> hashHotels;
  final List<HotelModel> hotels;
  final SortEnum? sort;
  final String search;

  MainHState({
    this.hashHotels = const {},
    this.hotels = const [],
    this.sort,
    this.search = '',
  });

  MainHState copyWith({
    Map<String, HotelModel>? hashHotels,
    List<HotelModel>? hotels,
    SortEnum? sort,
    String? search,
  }) {
    return MainHState(
      hashHotels: hashHotels ?? this.hashHotels,
      hotels: hotels ?? this.hotels,
      sort: sort ?? this.sort,
      search: search ?? this.search,
    );
  }
}
