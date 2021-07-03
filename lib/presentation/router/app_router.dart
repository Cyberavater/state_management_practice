import 'package:flutter/material.dart';

import 'package:flutter_application_1/presentation/screens/first_page.dart';
import 'package:flutter_application_1/presentation/screens/second_screen.dart';
import 'package:flutter_application_1/presentation/screens/third_page.dart';

class AppRouter {
  // final Counter _counter = Counter();

  Route generateRoute(settings) {
    switch (settings.name) {
      case FirstPage.id:
        {
          return MaterialPageRoute(builder: (_) {
            return FirstPage(
              title: 'First Page',
            );
          });
        }
      case SecondPage.id:
        {
          return MaterialPageRoute(builder: (_) {
            return SecondPage(
              title: 'Second Page',
              color: Colors.redAccent,
            );
          });
        }
      case ThirdPage.id:
        {
          return MaterialPageRoute(builder: (_) {
            return ThirdPage(
              title: 'Third Page',
              color: Colors.greenAccent,
            );
          });
        }

      default:
        {
          return MaterialPageRoute(builder: (_) {
            return FirstPage(
              title: 'First Page',
            );
          });
        }
    }
  }

  // dispose(){
  //   _counter.close();
  // }
}
