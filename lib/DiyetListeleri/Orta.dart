import 'package:flutter/material.dart';

class Ortak extends StatefulWidget {
  @override
  _OrtakState createState() => _OrtakState();
}

class _OrtakState extends State<Ortak> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          title: Text("Liste 2"),
        ),
        body: ListView(
          children:<Widget> [
            Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.topCenter,
              child: new Image.asset("assets/images/liste1.jpg"),
            ),
            Container(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "İlk olarak 2000 yılında ortaya çıkan Dukan Diyeti\n"
                    " Fransız Hekim Pierre Dukan tarafından hazırlanmıştır.\n"
                    " Dukan’a göre kilo vermenin anahtarının protein olduğu ve\n"
                    " dışarıdan yağ tüketmek ile vücuttaki yağların\n"
                    " yakılamayacağı belirtilmektedir.",
                style: new TextStyle(fontSize: 15.0),

              ),
            ),
            Container(
              padding: EdgeInsets.all(15.0),
              child: Text(
                  "1. GÜN:\n"
                      "KAHVALTI:\n"
                      "2 adet yumurta \n "
                      " + yağsız süt\n"
                      " + füme somon\n"
                      "\n"
                      "ÖĞLE:\n"
                      "Yağsız beyaz peynir ile hazırlanmış jambon ruloları\n "
                      "+Sade quark\n"
                      "\n"
                      "AKŞAM\n"
                      " Izgara Dana eti \n "
              ),
            ),
            Container(
              padding: EdgeInsets.all(15.0),
              child: Text(
                  "2. GÜN:\n"
                      "KAHVALTI:\n"
                      "  200 gr yağsız yoğurt \n "
                      " + 1,5 yemek kaşığı yulaf ezmesi\n"
                      "\n"
                      "ÖĞLE:\n"
                      "200 gr Kuşbaşı doğranmış tavuk\n "
                      "+ sade quark\n"
                      "\n"
                      "AKŞAM\n"
                      "Izgara Balık \n "
                      "+ doğranmış otlar\n "
              ),
            ),Container(
              padding: EdgeInsets.all(15.0),
              child: Text(
                  "3. GÜN:\n"
                      "KAHVALTI:\n"
                      "2 yemek kaşığı Yulaf ezmesi ve yağsız süt ile hazırlanmış karışım \n "
                      "\n"
                      "ÖĞLE:\n"
                      "175 gr kıyma ile hazırlanmış kıymalı yumurta\n "
                      "\n"
                      "AKŞAM\n"
                      "200 gr somon balığı \n "
                      "+ Buğulama Kuşkonmaz"
              ),
            ),Container(
              padding: EdgeInsets.all(15.0),
              child: Text(
                  "4. GÜN:\n"
                      "KAHVALTI:\n"
                      " 2 yumurta \n "
                      " + 1,5 yemek kaşığı yulaf ezmesi \n"
                      " + yağsız süt ile hazırlanmış omlet\n"
                      "\n"
                      "ÖĞLE:\n"
                      " 2 yumurta ile hazırlanmış\n "
                      "1 yemek kaşığı zeytinyağlı salata "
                      "\n"
                      "AKŞAM\n"
                      " 200 gr somon balığı\n "
                      "+ Buğulama Kuşkonmaz \n "
              ),
            ),
          ],
        ),
      ),

    );
  }
}