import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_terexov/const/extenshions.dart';
import 'package:hotel_terexov/hotel/domain/blocs/bloc/main_h_bloc.dart';
import 'package:hotel_terexov/hotel/domain/models/sort_enum.dart';

import '../../../../../const/navigation/router.dart';
import '../../widgets/my_tfield.dart';
import '../../widgets/search_category.dart';

class SmallHotels extends StatelessWidget {
  const SmallHotels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            title: Text('Список отелей'),
            centerTitle: true,
            automaticallyImplyLeading: false,
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 50,
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: MyTextField(
                      hint: 'search',
                      func: (value) => context
                          .read<MainHBloc>()
                          .add(SearchHotelEvent(name: value)),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(child: BlocBuilder<MainHBloc, MainHState>(
                    builder: (context, state) {
                      return SearchCategory(
                        active: state.sort?.method,
                        func: (Object sort) => context
                            .read<MainHBloc>()
                            .add(SortHotelsEvent(sort: sort as SortEnum)),
                        sortList: SortEnum.values.map((e) => e.method).toList(),
                      );
                    },
                  )),
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 20)),
          BlocBuilder<MainHBloc, MainHState>(
            builder: (context, state) {
              return SliverGrid.builder(
                itemCount: state.hotels.length,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 4 / 3,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20),
                itemBuilder: (context, index) {
                  final hotel = state.hotels[index];
                  return GestureDetector(
                    onTap: () => MyNavigatorManager.instance.pushItem(hotel.id),
                    child: Container(
                      margin: const EdgeInsets.only(left: 4, right: 4),
                      decoration: BoxDecoration(
                          border: Border.all(),
                          color: context.color.bg,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 25,
                              blurStyle: BlurStyle.normal,
                              color: context.color.appbar,
                              offset: Offset.zero,
                              spreadRadius: 1,
                            ),
                          ]),
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Text(hotel.name,
                                    textAlign: TextAlign.center,
                                    style: context.text.important),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                'свободных номеров: ${hotel.freeRoomEnt}',
                                style: context.text.subtitle,
                              )),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                'расстояние: ${hotel.distance}',
                                style: context.text.subtitle,
                              )),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          )
        ],
      ),
    );
  }
}
