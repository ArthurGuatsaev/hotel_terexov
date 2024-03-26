import 'package:hotel_terexov/hotel/data/clients/single_api_client.dart';

import 'package:hotel_terexov/hotel/domain/repositories/base_hotel_single.dart';

import '../../../domain/models/hotel_full_model.dart';

class HotelSingleRepo extends BaseHotelRepo {
  @override
  Future<HotelFullModel?> getHotel(int id) async {
    return await SingleApiClient.getHotel(id);
  }
}
