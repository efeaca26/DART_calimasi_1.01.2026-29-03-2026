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
          centerTitle: true,
          title: Text("Image"),
          backgroundColor: Colors.amber,
        ),
        body: Image.asset("assets/image.png",
        height: 300,
        width: 300,
        alignment: AlignmentGeometry.bottomRight,
        fit: BoxFit.fill,
        ),
      ),
    );
  }
}