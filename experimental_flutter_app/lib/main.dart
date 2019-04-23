import 'package:flutter/material.dart';

void main() {
  print('Hello');

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("Hello Title"),
          ),
          body: HelloRectangle()),
    ),
  );
}

// This is a function
/*
Widget helloRectangle() {
  return Container(
    color: Colors.amberAccent,
  );
}*/

class HelloRectangle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.amberAccent,
        height: 400.0,
        width: 300.0,
        child: Center(
          child: Text(
            "Hello !",
            style: TextStyle(fontSize: 40.0),
          ),
        ),
      ),
    );
  }
}
