import 'package:flutter/material.dart';
import 'my_component.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   color: Colors.lightGreenAccent,
    // );
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Home')),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              number += 1;
            }); // run build function again
          },
          backgroundColor: Colors.deepPurpleAccent,
          child: Icon(Icons.add),
        ),
        // body: Container(
        //   child: Center(child: Text(number.toString())),
        // )
        body: Center(
          child: Row(children: [MyComponent(), MyComponent(), MyComponent()]),
        ));
  }
}
