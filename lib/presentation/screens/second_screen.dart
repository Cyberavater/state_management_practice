import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/screens/first_page.dart';
import 'package:flutter_application_1/presentation/screens/third_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_application_1/logic/cubit/counter_cubit.dart';

class SecondPage extends StatefulWidget {

  static const id = '/second_page';

  SecondPage({Key? key, required this.title, this.color = Colors.lightBlueAccent}) : super(key: key);
  final String title;
  final Color color;

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: widget.color,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              'Your Count Value is:',
            ),
            BlocConsumer<Counter, CounterState>(
              listener: (context, state) {
                var x = BlocProvider.of<Counter>(context).state.incremented;
                if (x != null) {
                  if (x) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'Incremented',
                        ),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'Decremented',
                        ),
                      ),
                    );
                  }
                }
              },
              builder: (context, state) {
                return Text(
                  BlocProvider.of<Counter>(context).state.number.toString(),
                  style: Theme.of(context).textTheme.headline4,
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  onPressed: () =>
                      BlocProvider.of<Counter>(context).decrement(),
                  tooltip: 'Decrement',
                  child: Icon(Icons.remove),
                ),
                FloatingActionButton(
                  onPressed: () =>
                      BlocProvider.of<Counter>(context).increment(),
                  tooltip: 'Increment',
                  child: Icon(Icons.add),
                ),
              ],
            ),
            // OutlinedButton(
            //   onPressed: () {
            //     Navigator.pushNamed(
            //       context,
            //       FirstPage.id,
            //     );
            //   },
            //   child: Text("Page 2"),
            // ),
            OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  ThirdPage.id,
                );
              },
              child: Text("Page 3"),
            ),
          ],
        ),
      ),
    );
  }
}
