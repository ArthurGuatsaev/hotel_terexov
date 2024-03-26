part of '../initialize.dart';

class MyHomeApp extends StatelessWidget {
  const MyHomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    final dp = context
        .dependOnInheritedWidgetOfExactType<InheritedDependencies>()
        ?.dependencies;
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => MainHBloc(hR: dp!.hR)..add(GetHotelsEvent()),
            lazy: false)
      ],
      child: MyAppRouter(dependencies: dp),
    );
  }
}

class MyAppRouter extends StatelessWidget {
  const MyAppRouter({
    super.key,
    required this.dependencies,
  });

  final Dependencies? dependencies;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: createLightTheme(),
      routerDelegate: MyNavigatorManager.delegate,
      routeInformationParser: MyRouterInformationParser(),
    );
  }
}
