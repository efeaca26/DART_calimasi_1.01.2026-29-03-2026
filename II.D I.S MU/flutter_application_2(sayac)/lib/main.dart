import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatefulWidget {
  const myApp({super.key});

  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  int sayac = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          title: Text("Deneme"),
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: Text(sayac.toString(), style: TextStyle(fontSize: 50)),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: sayacarttir,
          child: Icon(Icons.plus_one),
        ),
      ),
    );
  }

  void sayacarttir() {
    setState(() {
      sayac++;
    });
  }
}
