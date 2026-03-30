import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Index(),
      debugShowCheckedModeBanner: false,
    );
  }
}


class Index extends StatelessWidget {
  const Index({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Image",
          style: TextStyle(
            color: Colors.white, 
            fontSize: 25),
        ),
        centerTitle: true,
        backgroundColor: Colors.brown,
      ),
      body: CircleAvatar(
        backgroundImage: AssetImage("img/bird.jpg"),
        radius: 150,
        child: Text("Kuş"),
      ),
    );
  }
}
