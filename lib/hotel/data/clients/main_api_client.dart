import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:hotel_terexov/hotel/domain/models/hotel_model.dart';

class MainApiClient {
  static Future<Map<String, HotelModel>> getAllModels() async {
    try {
      const String url = "https://terexov.ru/test/0777.json";
      final dio = Dio();
      final response = await dio.getUri<List<dynamic>>(Uri.parse(url));
      if (response.statusCode == 200 && response.data != null) {
        return {for (var e in response.data!) e['name']: HotelModel.fromMap(e)};
      }
      return {};
    } catch (e) {
      log('ошибка получения списка отелей $e');
      return {};
    }
  }
}
