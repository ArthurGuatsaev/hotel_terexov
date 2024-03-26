import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:hotel_terexov/hotel/domain/models/hotel_full_model.dart';

class SingleApiClient {
  static Future<HotelFullModel?> getHotel(int id) async {
    try {
      final url = "https://terexov.ru/test/$id.json";
      final dio = Dio();
      final response = await dio.getUri<Map<String, dynamic>>(Uri.parse(url));
      if (response.statusCode == 200 && response.data != null) {
        return HotelFullModel.fromMap(response.data!);
      }
      return null;
    } catch (e) {
      log('ошибка получения отеля $e');
      return null;
    }
  }
}
