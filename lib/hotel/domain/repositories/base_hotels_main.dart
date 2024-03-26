import 'package:hotel_terexov/hotel/domain/models/sort_enum.dart';

import '/hotel/domain/models/hotel_model.dart';

abstract class BaseHotelMainRepo {
  Map<String, HotelModel>? list;

  ///получение всех отелей списком
  Future<Map<String, HotelModel>> getAllHotels();

  /// поиск нужного отеля по названию
  List<HotelModel>? searchHotel(String name, List<HotelModel> hotels);

  /// сортировка отелей
  List<HotelModel> sort(SortEnum sort, List<HotelModel> hotels);
}
