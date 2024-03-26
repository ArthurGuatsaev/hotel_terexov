part of '../router.dart';

class MyNavigationState extends ChangeNotifier {
  MyNavigationState.home({this.home = true});
  MyNavigationState.item({this.home = true, this.item = true});

  bool home = false;
  bool item = false;
}
