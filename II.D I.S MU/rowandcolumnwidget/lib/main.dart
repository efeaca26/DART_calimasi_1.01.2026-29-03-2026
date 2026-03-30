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
          title: Text("Row and Column"),
          backgroundColor: Colors.blueGrey,
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(width: 50, height: 50, color: Colors.red),
            Container(width: 50, height: 50, color: Colors.blue),
            Container(width: 50, height: 50, color: Colors.yellow),
          ],
        ),
      ),
    );
  }
}