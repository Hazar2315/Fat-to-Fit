import 'package:flutter/material.dart';

class Basit extends StatefulWidget {
  @override
  _BasitState createState() => _BasitState();
}

class _BasitState extends State<Basit> {
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
                    " günde fazladan 200-400 kalori yakmaktır"
                    "Liste iki günden oluşuyor iki günde bir yürüyüş harici\n"
                    "antrenmanlara bir günlüğüne ara verip baştan başlayın",
                style: new TextStyle(fontSize: 23.0),

              ),
            ),
            Container(
              padding: EdgeInsets.all(15.0),
              child: Text(
                  "1. GÜN:\n"
                      "Sabah:\n"
                      "2 km yürüyüş"
                      "\n"
                      "ÖĞLE:\n"
                      "25 jump jack \n "
                      "+ 10x2 squad\n"
                      "\n"
                      "AKŞAM\n"
                      "2 km yürüyüş\n "
                      "+ 10x2 mekik\n "
                      "+ max şınav\n"
              ),
            ),
            Container(
              padding: EdgeInsets.all(15.0),
              child: Text(
                  "2. GÜN:\n"
                      "Sabah:\n"
                      "  2 km yürüyüş \n "
                      " + max barfiks\n"
                      "\n"
                      "ÖĞLE:\n"
                      "25 jump jack \n "
                      "+ 10x2 squad\n"
                      "10x2 mekik\n"
                      "\n"
                      "AKŞAM\n"
                      "max şınav \n "
                      "+ 2 km yürüyüş\n "
                      "+ 10x2 squad\n"
              ),
            ),
          ],
        ),
      ),

    );
  }
}