
import 'package:flutter/material.dart';
import 'package:flutter_application_1/logic/cubit/counter_cubit.dart';
import 'package:flutter_application_1/presentation/screens/first_page.dart';
import 'package:flutter_application_1/presentation/screens/second_screen.dart';
import 'package:flutter_application_1/presentation/screens/third_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  final Counter _counter = Counter();

  Route generateRoute(settings) {
    switch (settings.name) {
      case FirstPage.id:
        {
          return MaterialPageRoute(builder: (_) {
            return BlocProvider.value(
              value: _counter,
              child: FirstPage(
                title: 'First Page',
              ),
            );
          });
        }
      case SecondPage.id:
        {
          return MaterialPageRoute(builder: (_) {
            return BlocProvider.value(
              value: _counter,
              child: SecondPage(
                title: 'Second Page',
                color: Colors.redAccent,
              ),
            );
          });
        }
      case ThirdPage.id:
        {
          return MaterialPageRoute(builder: (_) {
            return BlocProvider.value(
              value: _counter,
              child: ThirdPage(
                title: 'Third Page',
                color: Colors.greenAccent,
              ),
            );
          });
        }

      default:
        {
          return MaterialPageRoute(builder: (_) {
            return BlocProvider.value(
              value: _counter,
              child: FirstPage(
                title: 'First Page',
              ),
            );
          });
        }
    }
  }

  dispose(){
    _counter.close();
  }
}
