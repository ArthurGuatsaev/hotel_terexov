import 'package:flutter/material.dart';

import 'screeens/small/small_hotels.dart';

class HotelsPage extends StatelessWidget {
  const HotelsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        switch (constraints.maxWidth) {
          case < 600:
            return const SmallHotels();
          case < 1000:
            return const SmallHotels();
          default:
            return const SmallHotels();
        }
      },
    );
  }
}
