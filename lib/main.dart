import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/router/app_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // final Counter _counter = Counter();

  AppRouter route = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: route.generateRoute,
    );
  }

  @override
  void dispose() {
    // _counter.close();
    route.dispose();
    super.dispose();
  }
}
