import 'package:flutter/material.dart';

class Orta extends StatefulWidget {
  @override
  _OrtaState createState() => _OrtaState();
}

class _OrtaState extends State<Orta> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          title: Text("Liste 1"),
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
                "Bu listenin amacı temel olarak vücuttaki fazla suyu atmak ve\n"
                    " günde fazladan 500-700 kalori yakmaktır"
                    "Liste beş günden oluşuyor iki günde bir yürüyüş harici\n"
                    "antrenmanlara bir günlüğüne ara verip baştan başlayın",
                style: new TextStyle(fontSize: 23.0),

              ),
            ),
            Container(
              padding: EdgeInsets.all(15.0),
              child: Text(
                  "1. GÜN:\n"
                      "20 dk koşu bandı\n"
                      "200 ip atla\n"
                      "20 şınav\n"
                      "20x3 mekik\n"
                      "15 dk bisiklet"

              ),
            ),
            Container(
              padding: EdgeInsets.all(15.0),
              child: Text(
                  "2. GÜN:\n"
                      "20x3 jump-jack\n"
                      "200 ip atla\n"
                      "Concentration Curl 12x3\n"
                      "25x2 mekik"
              ),
            ),
            Container(
              padding: EdgeInsets.all(15.0),
              child: Text(
                  "3. GÜN:\n"
                      "200 ip atla\n"
                      "20 dk koşu bandı\n"
                      "20x3 squad\n"
                      "25x2 mekik"
              ),
            ),
            Container(
              padding: EdgeInsets.all(15.0),
              child: Text(
                  "4. GÜN:\n"
                      "20x3 jump-jack\n"
                      "200 ip atla\n"
                      " 12x3 arnold press\n"
                      "15 dk bisiklet"
              ),
            ),
            Container(
              padding: EdgeInsets.all(15.0),
              child: Text(
                  "5. GÜN:\n"
                      "20 dk koşu \n"
                      "200 ip atla\n"
                      "max barfiks\n"
                      "Seated Cable Row\n"
                      "25x2 mekik"
              ),
            ),
          ],
        ),
      ),

    );
  }
}