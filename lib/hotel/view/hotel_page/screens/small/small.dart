import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_terexov/const/extenshions.dart';
import 'package:hotel_terexov/hotel/view/hotel_page/cubit/hotel_cubit.dart';

class SmallHotel extends StatelessWidget {
  const SmallHotel({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HotelCubit, HotelState>(
      builder: (context, state) {
        if (state.status == LoadStatus.empty) {
          return const Material(child: Center(child: Text('Отель не найден')));
        }
        if (state.status == LoadStatus.load) {
          final hotel = state.hotel!;
          return Scaffold(
            body: CustomScrollView(
              slivers: [
                SliverAppBar(
                  title: Text(hotel.name),
                  centerTitle: true,
                ),
                if (hotel.image != null)
                  SliverToBoxAdapter(
                      child: AspectRatio(
                    aspectRatio: 4 / 2.2,
                    child: Image.network(
                      hotel.image!.imageUrl,
                      fit: BoxFit.fill,
                      errorBuilder: (context, error, stackTrace) =>
                          const Center(
                        child: Text('Упс...'),
                      ),
                    ),
                  )),
                SliverToBoxAdapter(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('название: ${hotel.name}',
                          style: context.text.important),
                      Text('адрес: ${hotel.address}',
                          style: context.text.subtitle),
                      Text('расстояние: ${hotel.distance} км',
                          style: context.text.subtitle),
                      Text('количество звезд: ${hotel.stars}',
                          style: context.text.subtitle),
                    ],
                  ),
                )),
              ],
            ),
          );
        }
        return const Material(
            child: Center(child: CircularProgressIndicator.adaptive()));
      },
    );
  }
}
