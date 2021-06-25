import 'package:flutter/material.dart';

class Hafif extends StatefulWidget {
  @override
  _HafifState createState() => _HafifState();
}

class _HafifState extends State<Hafif> {
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
                "Akdeniz Diyeti:Güney Avrupa kökenli olan bu diyeti en çok Yunanistan, \n"
                    " İtalya ve Girit gibi ülkeler uyguluyor. Akdeniz diyetinde  \n"
                    "bol miktarda taze bitkisel gıda ve taze meyve, fasulye, fındık, \n "
                    "kepekli tahıllar ve zeytinyağı tüketebiliyor. Balık, \n "
                    "tavuk ve yumurta da tüketiliyor. Bu diyetin 1/3'ü yağdan oluşuyor. \n"
                    " Bu diyet hastalıkları azaltma ve yaşam kalitesini arttırmasıyla \n"
                    " şimdiye kadar en çok araştırılan diyetlerden birisidir.  \n",
                style: new TextStyle(fontSize: 23.0),

              ),
            ),
            Container(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "1. GÜN:\n"
                    "KAHVALTI:\n"
                    " 1 adet yumurta \n "
                    " + 1 dilim az yağlı beyaz peynir\n"
                    " + kepekli ekmek\n"
                    " + domates, salatalık\n"
                    "\n"
                    "ÖĞLE:\n"
                    "Ton balıklı bol yeşillikli salata\n "
                    "+ 1 dilim kepekli ekmek\n"
                    "\n"
                    "ARA\n"
                    "Yarım yağlı süt\n "
                    "+ Badem\n"
                    "\n"
                    "AKŞAM\n"
                    "Zeytinyağlı sebze yemeği\n "
                    "+ yarım yağlı yoğurt\n "
                    "+ salata\n"
                    "\n"
                    "ARA ÖĞÜN \n"
                    "Meyve"
              ),
            ),
            Container(
              padding: EdgeInsets.all(15.0),
              child: Text(
                  "2. GÜN:\n"
                      "KAHVALTI:\n"
                      "  2 dilim beyaz peynir \n "
                      " + Zeytin\n"
                      " + Kepek ekmeği\n"
                      " + Domates, salatalık, yeşillik\n"
                      "\n"
                      "ÖĞLE:\n"
                      "Fırında ızgara sebze\n "
                      "+ Makarna\n"
                      "Ayran\n"
                      "\n"
                      "ARA\n"
                      "Meyve\n "
                      "+fındık\n"
                      "\n"
                      "AKŞAM\n"
                      "Zeytinyağlı bakliyat yemeği \n "
                      "+ yarım yağlı yoğurt\n "
                      "+ salata\n"
                      "\n"
                      "ARA ÖĞÜN \n"
                      "Yarım yağlı süt\n"
                      "meyve"
              ),
            ),Container(
              padding: EdgeInsets.all(15.0),
              child: Text(
                  "3. GÜN:\n"
                      "KAHVALTI:\n"
                      " Yarım yağlı yoğurt \n "
                      " + 3 kaşık yulaf ezmesi\n"
                      " + meyve\n"
                      "\n"
                      "ÖĞLE:\n"
                      "Peynirli, avokadolu salata\n "
                      "+ 1 dilim kepekli ekmek\n"
                      "ayran\n"
                      "\n"
                      "ARA\n"
                      "Yarım yağlı süt\n "
                      "+  ceviz\n"
                      "\n"
                      "AKŞAM\n"
                      "Izgara balık\n "
                      "+  bol yeşillikli salata\n"
                      "\n"
                      "ARA ÖĞÜN \n"
                      "Meyve"
              ),
            ),Container(
              padding: EdgeInsets.all(15.0),
              child: Text(
                  "4. GÜN:\n"
                      "KAHVALTI:\n"
                      " Peynirli omlet \n "
                      " + zeytin\n"
                      " + kepekli ekmek\n"
                      " + Yeşillik\n"
                      "\n"
                      "ÖĞLE:\n"
                      "Zeytinyağlı bakliyat yemeği\n "
                      "+ Yarım yağlı yoğurt\n"
                      "Salata\n"
                      "\n"
                      "ARA\n"
                      "Meyve\n "
                      "+ Badem\n"
                      "\n"
                      "AKŞAM\n"
                      "Zeytinyağlı sebze yemeği\n "
                      "+ Bulgur pilavı \n "
                      "+  Ayran\n"
                      "\n"
                      "ARA ÖĞÜN \n"
                      "Yarım yağlı yoğurt\n"
                      "ceviz"
              ),
            ),Container(
              padding: EdgeInsets.all(15.0),
              child: Text(
                  "5. GÜN:\n"
                      "KAHVALTI:\n"
                      " Lor peyniri \n "
                      " + Ceviz\n"
                      " + kepekli ekmek\n"
                      " + domates, salatalık\n"
                      "\n"
                      "ÖĞLE:\n"
                      "Haşlanmış mercimekli salata\n "
                      "+ ayran\n"
                      "\n"
                      "ARA\n"
                      "1 kase yoğurt\n "
                      "+ Meyve\n"
                      "\n"
                      "AKŞAM\n"
                      "Zeytinyağlı sebze yemeği\n "
                      "+  kepek ekmeği\n "
                      "+ salata\n"
                      "\n"
                      "ARA ÖĞÜN \n"
                      "Meyve"
              ),
            ),Container(
              padding: EdgeInsets.all(15.0),
              child: Text(
                  "6. GÜN:\n"
                      "KAHVALTI:\n"
                      " Yarım yağlı süt \n "
                      " +  Fındık\n"
                      " +  2 yemek kaşığı yulaf ezmesi\n"
                      " + Meyve\n"
                      "\n"
                      "ÖĞLE:\n"
                      "Sebzeli makarna\n "
                      "+ ayran\n"
                      "salata\n"
                      "\n"
                      "ARA\n"
                      "Meyve \n "
                      "+  ceviz\n"
                      "\n"
                      "AKŞAM\n"
                      " Izgara Tavuk\n "
                      "+ yarım yağlı yoğurt\n "
                      "+  Haşlama sebze\n"
                      "\n"
                      "ARA ÖĞÜN \n"
                      "Yarım yağlı süt\n"
                      " meyve"
              ),
            ),Container(
              padding: EdgeInsets.all(15.0),
              child: Text(
                  "7. GÜN:\n"
                      "KAHVALTI:\n"
                      " Menemen \n "
                      " + Yarım yağlı beyaz peynir\n"
                      " + kepekli ekmek\n"
                      " + yeşillik\n"
                      "\n"
                      "ÖĞLE:\n"
                      "Tam tahıl ekmeğine yapılmış sandviç\n "
                      "+ ayran\n"
                      "\n"
                      "ARA\n"
                      "Meyve\n "
                      "+ Badem\n"
                      "\n"
                      "AKŞAM\n"
                      " Çorba\n "
                      "+ Zeytinyağlı bakliyat yemeği\n "
                      "+ salata\n"
                      "\n"
                      "ARA ÖĞÜN \n"
                      "Yarım yağlı süt"
              ),
            ),
          ],
        ),
      ),

    );
  }
}
