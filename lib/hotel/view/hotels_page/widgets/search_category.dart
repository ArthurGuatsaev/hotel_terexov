import 'package:flutter/material.dart';
import 'package:hotel_terexov/hotel/domain/models/sort_enum.dart';

class SearchCategory extends StatefulWidget {
  final Function(Object sort) func;
  final List<String> sortList;
  final String? active;
  const SearchCategory({
    super.key,
    required this.sortList,
    required this.func,
    this.active,
  });

  @override
  State<SearchCategory> createState() => _SearchCategoryState();
}

class _SearchCategoryState extends State<SearchCategory> {
  Color? isA(String sort) => widget.active == sort ? Colors.blue : null;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemExtent: 179,
      itemCount: widget.sortList.length,
      itemBuilder: (context, index) {
        final sort = widget.sortList[index];
        return GestureDetector(
          onTap: () => widget.func(sort.onEnum),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            margin: const EdgeInsets.only(right: 8),
            decoration: BoxDecoration(
                color: isA(sort),
                borderRadius: BorderRadius.circular(10),
                border: Border.all()),
            child: Center(
              child: Text(sort, textAlign: TextAlign.center),
            ),
          ),
        );
      },
    );
  }
}
