import '../../../domain/models/hotel_model.dart';
import '../../../domain/models/sort_enum.dart';

mixin SearchHotels {
  /// поиск нужного отеля по названию
  List<HotelModel>? searchHotel(String name, List<HotelModel> hotels) {
    return hotels.where((e) => e.name.toLowerCase().contains(name)).toList();
  }

  /// сортировка
  List<HotelModel> sort(SortEnum sort, List<HotelModel> hotels) {
    switch (sort) {
      case SortEnum.distance:
        return sortByDis(hotels);
      case SortEnum.room:
        return sortByRoom(hotels);
    }
  }

  /// сортировка по дистанции
  List<HotelModel> sortByDis(List<HotelModel> hotels) {
    return hotels..sort((a, b) => a.distance.compareTo(b.distance));
  }

  /// сортировка по свободным номерам
  List<HotelModel> sortByRoom(List<HotelModel> hotels) {
    return hotels..sort((a, b) => b.freeRoomEnt.compareTo(a.freeRoomEnt));
  }
}
