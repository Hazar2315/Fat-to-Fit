import 'package:flutter/material.dart';
import 'package:okulproje/besinler/besinler.dart';
class Karbonhidrat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown.shade600,
          title: Text("Karbonhidratlar"),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.topCenter,
              child: new Image.asset("assets/images/karbonhidratlar.jpg"),
            ),
            Container(
              padding: EdgeInsets.all(15.0),
              child: Text("Karbonhidratlar, çoğu canlılar için enerji veren \n "
                  "temel besin maddeleridir.Proteinlerin vücutta yapım ve\n"
                  " onarımda kullanılmalarını sağlarlar, yağları metabolize ederler,\n"
                  " karbonhidrat alınmadığında vücut enerji için yağları kullanmak zorunda kalır.\n "
                  "Karbonhidratlar sinir dokusu için gereklidir ve beynin tek enerji kaynağıdırlar.\n "
                  "Bazı karbonhidratlar sindirim için gerekli olan ve bağırsaklarda\n"
                  " bulunan sağlıklı bakterilerin oluşumunda yer alır.\n"
                  " Karbonhidrat eksikliğinde sindirim sistemi problemleri görülür.\n "
                  "Karbonhidratların çoğu iyi birer lif kaynağıdır.\n"
                  " Lifler ise vücudumuzu kalp hastalıklarından, kanserden,\n "
                  "diabetten ve sindirim problemlerinden korur.",
                style: new TextStyle(fontSize: 15.0),

              ),
            ),
            FloatingActionButton(onPressed:(){
              Navigator.push(context, MaterialPageRoute(builder:(context)=>Besinler()));
            },

              child: const Icon(Icons.home),
              backgroundColor:Colors.brown.shade600,


            ),
          ],

        ),
      ),
    );
  }
}
