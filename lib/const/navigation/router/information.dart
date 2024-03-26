part of '../router.dart';

class MyRouterInformationParser
    extends RouteInformationParser<MyNavigationState> {
  @override
  Future<MyNavigationState> parseRouteInformation(
      RouteInformation routeInformation) async {
    final url = routeInformation.uri;
    log('parse route: $url');
    if (url.pathSegments.isEmpty) {
      return MyNavigationState.home();
    }
    log("length: ${url.pathSegments.length} last: ${url.pathSegments.last}");
    switch (url.pathSegments[0]) {
      case 'home':
        return MyNavigationState.home();
      case 'item':
        return MyNavigationState.item();
      default:
        return MyNavigationState.home();
    }
  }

  @override
  RouteInformation? restoreRouteInformation(MyNavigationState configuration) {
    if (configuration.item) {
      return RouteInformation(
        uri: Uri.parse('/item'),
      );
    }
    if (configuration.home) {
      return RouteInformation(
        uri: Uri.parse('/home'),
      );
    }

    return RouteInformation(uri: Uri.parse('/home'));
  }
}
