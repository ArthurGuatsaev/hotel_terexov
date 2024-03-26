import 'package:hotel_terexov/hotel/data/clients/main_api_client.dart';
import 'package:hotel_terexov/hotel/domain/models/hotel_model.dart';
import 'package:hotel_terexov/hotel/domain/repositories/base_hotels_main.dart';

import 'search_main.dart';

class HotelsMainRepo extends BaseHotelMainRepo with SearchHotels {
  @override
  Future<Map<String, HotelModel>> getAllHotels() async {
    if (list != null) return list!;
    return await MainApiClient.getAllModels();
  }
}
