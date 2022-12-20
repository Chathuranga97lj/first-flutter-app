import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

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
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
          ),
        ));
  }
}
