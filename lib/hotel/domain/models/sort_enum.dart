enum SortEnum {
  room,
  distance,
}

extension SortHotel on SortEnum {
  String get method {
    switch (this) {
      case SortEnum.room:
        return 'По количеству свободных номеров';
      case SortEnum.distance:
        return 'По расстоянию от центра города';
    }
  }
}

extension SortHotelParse on String {
  SortEnum get onEnum {
    switch (this) {
      case 'По количеству свободных номеров':
        return SortEnum.room;
      case 'По расстоянию от центра города':
        return SortEnum.distance;
      default:
        return SortEnum.room;
    }
  }
}
