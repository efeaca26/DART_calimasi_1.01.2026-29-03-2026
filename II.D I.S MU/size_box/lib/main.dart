import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Hayırlı Ramazanlarrrr"),
          backgroundColor: Colors.blue,
        ),
        body: Row(
          children: [
            SizedBox(width: 100),
            Container(color: Colors.cyan, height: 100, width: 100),
            SizedBox(width: 100),
            Container(color: Colors.cyan, height: 100, width: 100),
          ],
        ),
      ),
    );
  }
}
