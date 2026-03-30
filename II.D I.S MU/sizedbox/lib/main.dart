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
          title: Text("SizedBox",style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.brown,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              Text(
                "Demagoji nedir?",
                style: TextStyle(fontSize: 30, color: Colors.orangeAccent),
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.only(left: 10, right: 5),
                height: 300,
                width: 500,
                child: Text(
                  "demagoji cok boş birşey"
                ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}