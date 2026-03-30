import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
  }


class _MainAppState extends State<MainApp>
{
  int hedefSayi = Random().nextInt(100);
  String mesaj = "Tahmin Et";
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Textfield"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                mesaj,
                style: TextStyle(color: Colors.deepOrange, fontSize: 25),
              ),
              TextField(
                controller: controller,
                keyboardType: TextInputType.number,
                maxLines: 1,
                maxLength: 10,
                textAlign: TextAlign.center,
                enabled: true,
                autofocus: false,
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  labelText: "Sayı Giriniz",
                  contentPadding: EdgeInsets.all(20),
                  // counterText: "Sayı Giriniz",
                  // counter: Icon(Icons.numbers),
                  filled: true,
                  // fillColor: Colors.blue,
                  // hintText: "Sayı Giriniz",
                  hintStyle: TextStyle(color: Colors.white),
                  // prefixIcon: Icon(Icons.text_fields)
                  // suffixIcon: Icon(Icons.password),
                ),
              ),
              ElevatedButton(onPressed: _kontrolEt, child: Text("Gönder"))
            ],
          ),
        ),
      ),
    );
  }

  void _kontrolEt(){
    int tahmin = int.parse(controller.text);
    setState(() {
      if(tahmin < hedefSayi){
        mesaj = "Daha Büyük sayı dene.";
      }
      else if(tahmin > hedefSayi){
        mesaj = "Daha Küçük sayı dene.";
      }
      else if(tahmin < 0 || tahmin > 100){
        mesaj = "Yanlış Sayı Aralığı.";
      }
    });
  }
}
