import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_application_1/presentation/router/app_router.dart';
import 'package:flutter_application_1/logic/cubit/counter_cubit.dart';
import 'package:flutter_application_1/logic/cubit/internet_cubit.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // final Counter _counter = Counter();

  final AppRouter route = AppRouter();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<Counter>(
      create: (context) => Counter(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        onGenerateRoute: route.generateRoute,
      ),
    );
  }
  

}
