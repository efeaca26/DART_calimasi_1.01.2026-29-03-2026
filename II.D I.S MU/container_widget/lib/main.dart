import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Container Widget",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.deepOrangeAccent,
        ),
        body: Container(
          height: 300,
          width: 350,
          color: Colors.grey,
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.only(left: 50, top: 50),
          child: Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
          ),
        ),
      ),
    );
  }
}

