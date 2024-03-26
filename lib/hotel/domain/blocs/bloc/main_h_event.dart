part of 'main_h_bloc.dart';

abstract class MainHEvent {}

class GetHotelsEvent extends MainHEvent {}

class SearchHotelEvent extends MainHEvent {
  final String name;

  SearchHotelEvent({required this.name});
}

class SortHotelsEvent extends MainHEvent {
  final SortEnum sort;

  SortHotelsEvent({required this.sort});
}
