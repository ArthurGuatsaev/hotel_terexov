import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_terexov/hotel/view/hotel_page/cubit/hotel_cubit.dart';

import 'screens/small/small.dart';

class HotelPage extends StatelessWidget {
  final int id;
  const HotelPage({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HotelCubit()..getHotel(id),
      child: LayoutBuilder(
        builder: (context, constraints) {
          switch (constraints.maxWidth) {
            case < 600:
              return const SmallHotel();
            case < 1000:
              return const SmallHotel();
            default:
              return const SmallHotel();
          }
        },
      ),
    );
  }
}
