import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int sayac = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Elevanted Button"),
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(sayac.toString(), style: TextStyle(fontSize: 50)),
              ElevatedButton.icon(
                onLongPress: () {
                  setState(() {
                    sayac = 0;
                  });
                },
                icon: Icon(Icons.watch),
                onPressed: _sayacArttir,
                label: Text("Sayacı Arttır"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  //padding: EdgeInsets.symmetric(vertical:
                  elevation: 10,
                  shape: StadiumBorder()
                ),
              ),
              OutlinedButton(onPressed: _sayacArttir, child: Text("Sayacı Arttır"),
              ),
              TextButton(onPressed: _sayacArttir, child: Text("Sayacı Arttır")
              ),
              IconButton(onPressed: _sayacArttir, icon: Icon(Icons.check_circle,color: Colors.lightGreenAccent,size: 100,))
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _sayacArttir,
          child: Icon(Icons.home),
          heroTag: "fab1",),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }

  _sayacArttir() {
    setState(() {
      sayac++;
    });
  }
}
