import 'package:bloc/bloc.dart';
import 'package:hotel_terexov/hotel/data/repositories/single/hotel_single.dart';
import 'package:hotel_terexov/hotel/domain/models/hotel_full_model.dart';
import 'package:hotel_terexov/hotel/domain/repositories/base_hotel_single.dart';

part 'hotel_state.dart';

class HotelCubit extends Cubit<HotelState> {
  final BaseHotelRepo _hr;
  HotelCubit()
      : _hr = HotelSingleRepo(),
        super(HotelState());

  getHotel(int id) async {
    emit(state.copyWith(status: LoadStatus.loading));
    final hotel = await _hr.getHotel(id);
    final status = hotel != null ? LoadStatus.load : LoadStatus.empty;
    emit(state.copyWith(hotel: hotel, status: status));
  }
}
