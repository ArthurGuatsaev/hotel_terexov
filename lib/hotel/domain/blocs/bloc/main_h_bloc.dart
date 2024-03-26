import 'package:bloc/bloc.dart';
import 'package:hotel_terexov/hotel/domain/models/hotel_model.dart';
import 'package:hotel_terexov/hotel/domain/models/sort_enum.dart';
import 'package:hotel_terexov/hotel/domain/repositories/base_hotels_main.dart';

part 'main_h_event.dart';
part 'main_h_state.dart';

class MainHBloc extends Bloc<MainHEvent, MainHState> {
  final BaseHotelMainRepo hR;
  MainHBloc({required this.hR}) : super(MainHState()) {
    on<GetHotelsEvent>(getHotel);
    on<SearchHotelEvent>(searchHotel);
    on<SortHotelsEvent>(sortHotels);
  }
  getHotel(GetHotelsEvent event, Emitter<MainHState> emit) async {
    final hotels = await hR.getAllHotels();
    emit(state.copyWith(hashHotels: hotels, hotels: hotels.values.toList()));
  }

  searchHotel(SearchHotelEvent event, Emitter<MainHState> emit) {
    final hotels = hR.searchHotel(event.name, state.hashHotels.values.toList());
    emit(state.copyWith(hotels: hotels, search: event.name));
    if (state.sort != null) add(SortHotelsEvent(sort: state.sort!));
  }

  sortHotels(SortHotelsEvent event, Emitter<MainHState> emit) {
    final hotels = hR.sort(event.sort, state.hotels);
    emit(state.copyWith(hotels: hotels, sort: event.sort));
  }
}
