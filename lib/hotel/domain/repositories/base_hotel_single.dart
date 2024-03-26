import '../models/hotel_full_model.dart';

abstract class BaseHotelRepo {
  Future<HotelFullModel?> getHotel(int id);
}
