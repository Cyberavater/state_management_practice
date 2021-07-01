import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_application_1/logic/cubit/counter_cubit.dart';
import 'package:flutter_application_1/presentation/router/app_router.dart';
import 'package:flutter_application_1/presentation/screens/first_page.dart';
import 'package:flutter_application_1/presentation/screens/second_screen.dart';
import 'package:flutter_application_1/presentation/screens/third_page.dart';




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
      // routes: {
      //   FirstPage.id: (context) => BlocProvider.value(
      //         value: _counter,
      //         child: FirstPage(
      //           title: 'First Page',
      //         ),
      //       ),
      //   SecondPage.id: (context) => BlocProvider.value(
      //     value: _counter,
      //     child: SecondPage(
      //           title: 'Second Page',
      //           color: Colors.redAccent,
      //         ),
      //   ),
      //   ThirdPage.id: (context) => BlocProvider.value(
      //     value: _counter,
      //     child: ThirdPage(
      //           title: 'Third Page',
      //           color: Colors.greenAccent,
      //         ),
      //   ),
      // },
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
