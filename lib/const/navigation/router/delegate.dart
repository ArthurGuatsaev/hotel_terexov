part of '../router.dart';

class MyRouterDelegate extends RouterDelegate<MyNavigationState>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<MyNavigationState> {
  static MyRouterDelegate instance = MyRouterDelegate._();
  Map<String, Object> param = {};
  MyNavigationState? myNS;
  @override
  final GlobalKey<NavigatorState> navigatorKey =
      MyNavigatorManager.instance.key;
  MyRouterDelegate._();
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      pages: [
        const MaterialPage(child: HotelsPage(), name: 'home'),
        if (myNS?.item == true)
          MaterialPage(child: HotelPage(id: param['id'] as int), name: 'item')
      ],
      onPopPage: onPop,
    );
  }

  @override
  MyNavigationState? get currentConfiguration => myNS;
  @override
  Future<void> setNewRoutePath(MyNavigationState configuration) async {
    myNS = configuration;
    notifyListeners();
  }

  bool onPop(Route<dynamic> route, dynamic result) {
    switch (route.settings.name) {
      case 'item':
        myNS = MyNavigationState.home();
        notifyListeners();
    }
    return false;
  }

  void notify() => notifyListeners();
}
