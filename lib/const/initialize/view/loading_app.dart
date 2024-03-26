part of '../initialize.dart';

class InitializationSplashScreen extends StatefulWidget {
  final ValueNotifier<({int progress, String message})> progress;
  const InitializationSplashScreen({super.key, required this.progress});

  @override
  State<InitializationSplashScreen> createState() =>
      _InitializationSplashScreenState();
}

class _InitializationSplashScreenState
    extends State<InitializationSplashScreen> {
  @override
  void initState() {
    widget.progress.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    widget.progress.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 100, right: 100, bottom: 50),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: CircularProgressIndicator.adaptive(
                    backgroundColor: Colors.black),
              ),
            ),
            Text(
              'initialization:  ${widget.progress.value.message}: ${widget.progress.value.progress}',
              style: const TextStyle(color: Colors.black),
            )
          ],
        ),
      )),
    );
  }
}
