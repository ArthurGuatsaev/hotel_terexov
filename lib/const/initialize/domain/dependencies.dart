part of '../initialize.dart';

abstract interface class Dependencies {
  abstract final BaseHotelMainRepo hR;
  final Map<String, Object> context = {};
}

class MutableDependencies implements Dependencies {
  @override
  final Map<String, Object> context = {};
  @override
  late BaseHotelMainRepo hR;

  Dependencies freeze() => UnmutableDependencies(
        hR: hR,
        context: context,
      );
}

final class UnmutableDependencies implements Dependencies {
  @override
  final BaseHotelMainRepo hR;

  @override
  final Map<String, Object> context;
  const UnmutableDependencies({
    required this.hR,
    required this.context,
  });
}

class InheritedDependencies extends InheritedWidget {
  final Dependencies dependencies;
  const InheritedDependencies({
    required super.child,
    super.key,
    required this.dependencies,
  });

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }

  static Dependencies of(BuildContext context) => context
      .dependOnInheritedWidgetOfExactType<InheritedDependencies>()!
      .dependencies;
}
