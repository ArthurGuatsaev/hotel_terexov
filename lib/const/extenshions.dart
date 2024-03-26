import 'package:flutter/material.dart';
import 'package:hotel_terexov/const/themes/src/colors/color_constant.dart';

import 'themes/src/text/text_constant.dart';

extension BuildContextExt on BuildContext {
  $MyThemeColor get color => Theme.of(this).extension<$MyThemeColor>()!;
  $MyThemeText get text => Theme.of(this).extension<$MyThemeText>()!;
  bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;
}

extension FreeRooms on String {
  String get imageUrl {
    return 'https://terexov.ru/test/$this';
  }

  /// парс строки в массив, для определения списка свободных номеров
  List<int> get freeR {
    List<int> res = [];
    int end = 0;
    String val = this;
    while (val.isNotEmpty) {
      end = val.indexOf(":");
      if (end < 0) {
        final room = int.tryParse(val);
        if (room != null) res.add(room);
        return res;
      }
      final room = int.tryParse(val.substring(0, end));
      if (room != null) res.add(room);
      val = val.substring(end + 1);
    }
    return res;
  }
}
