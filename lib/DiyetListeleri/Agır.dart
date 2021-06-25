import 'package:flutter/material.dart';

class Agir extends StatefulWidget {
  @override
  _AgirState createState() => _AgirState();
}

class _AgirState extends State<Agir> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          title: Text("Liste 3"),
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
                "Türkiye'de İsveç'ten konuşulunca insanların aklına\n "
                    "İsveç diyeti geliyor. İsveç Diyetini uygulayan\n "
                    "herkes iki haftada 7 ile 20 kilo arasında verebildiğini\n"
                    " belirtti. Dahası diyetin en büyük özelliği metabolizmayı\n"
                    " tamamen değiştirdiği için 2 yıl boyunca hiç kilo alınmamasını\n"
                    " sağlandığı ifade ediliyor",
                style: new TextStyle(fontSize: 15.0),

              ),
            ),
            Container(
              padding: EdgeInsets.all(15.0),
              child: Text(
                  "1. GÜN:\n"
                      "KAHVALTI:\n"
                      "1 Fincan kahve \n "
                      " + 1 Kesme şeker\n"
                      "\n"
                      "ÖĞLE:\n"
                      "2 katı yumurta\n "
                      "+1 porsiyon haşlanmış ıspanak\n"
                      "1 domates\n"
                      "\n"
                      "AKŞAM\n"
                      "  1 biftek(200 gram,) \n"
                      "zeytinyağlı ve limonlu yeşil salata\n "
              ),
            ),
            Container(
              padding: EdgeInsets.all(15.0),
              child: Text(
                  "2. GÜN:\n"
                      "KAHVALTI:\n"
                      "  1 fincan kahve \n "
                      " + 1 kesme şeker\n"
                      "\n"
                      "ÖĞLE:\n"
                      "1 dilim salam\n "
                      "+ 100 gram yoğurt\n"
                      "\n"
                      "AKŞAM\n"
                      "1 biftek (200 gram) \n "
                      "+ yeşil salata\n"
                      " 1 meyve\n"
              ),
            ),
            Container(
              padding: EdgeInsets.all(15.0),
              child: Text(
                  "3. GÜN:\n"
                      "KAHVALTI:\n"
                      " 1 fincan kahve \n "
                      " +1 kesme şeker \n"
                      " + 1 dilim kızarmış ekmek\n"
                      "\n"
                      "ÖĞLE:\n"
                      " Haşlanmış ıspanak\n "
                      "1 domates\n"
                      " 1 meyve\n"
                      "\n"
                      "AKŞAM\n"
                      " 2 katı yumurta\n "
                      "+ 1 dilim salam \n"
                      "yeşil salata\n "
              ),
            ),
            Container(
              padding: EdgeInsets.all(15.0),
              child: Text(
                  "4. GÜN:\n"
                      "KAHVALTI:\n"
                      "1 fincan kahve \n"
                      "1 kesme şeker\n"
                      "1 dilim kızarmış ekmek\n"
                      "\n"
                      "ÖĞLE:\n"
                      "1 katı yumurta\n "
                      "1 rendelenmiş havuç\n"
                      "25 gram yağsız beyaz peynir"
                      "\n"
                      "AKŞAM\n"
                      " 2 dilim portakalın suyu \n "
                      "+ 100 gram yoğurt\n"
              ),
            ),
            Container(
              padding: EdgeInsets.all(15.0),
              child: Text(
                  "5. GÜN:\n"
                      "KAHVALTI:\n"
                      "1 büyük rendelenmis havuç (limonlu) \n"
                      "\n"
                      "ÖĞLE:\n"
                      " Haşlanmış yağsız balık\n "
                      "\n"
                      "AKŞAM\n"
                      " 1 biftek (200 gram) \n "
                      "+ salata ve brokoli\n"
              ),
            ),
            Container(
              padding: EdgeInsets.all(15.0),
              child: Text(
                  "6. GÜN:\n"
                      "KAHVALTI:\n"
                      "1 fincan kahve \n"
                      "1 kesme şeker\n"
                      "\n"
                      "ÖĞLE:\n"
                      "2 katı yumurta\n "
                      "1 rendelenmiş havuç\n"
                      "\n"
                      "AKŞAM\n"
                      " Derisi alınmiş tavuk (200 gram) \n "
                      "+ salata\n"
              ),
            ),
            Container(
              padding: EdgeInsets.all(15.0),
              child: Text(
                  "7. GÜN:\n"
                      "KAHVALTI:\n"
                      "Şekersiz çay \n"
                      "\n"
                      "ÖĞLE:\n"
                      " Izgara et (200 gram)\n "
                      "taze meyve\n"
                      "\n"
                      "AKŞAM\n"
                      " hiçbir şey \n "
              ),
            ),
          ],
        ),
      ),

    );
  }
}