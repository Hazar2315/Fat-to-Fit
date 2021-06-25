import 'package:flutter/material.dart';
import 'package:okulproje/besinler/besinler.dart';
class Mineral extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey.shade500,
          title: Text("Mineraller"),
        ),
        body:ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.topCenter,
              child: new Image.asset("assets/images/mineraller.jpg"),
            ),
            Container(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "Mineraller, çeşitli fonksiyonlar için vücudun ihtiyaç duyduğu organik "
                    "olmayan maddelerdir. Mineraller kemik ve diş oluşumunda rol oynar, "
                    "vücut sıvıları ve dokularının temel bileşenleridir ve enzim ve sinir fonksiyonlarında işlevi vardır."
                  "Vücudun mineral ihtiyacı kişinin yaşına, cinsiyetine, fizyolojik durumuna (ör. hamilelik) ve bazen sağlık durumuna göre farklılıklar gösterir."
                    " Bazı minerallere diğerlerinden daha fazla miktarda ihtiyaç duyulurken (kalsiyum, fosfor, magnezyum, sodyum, potasyum ve klorür) diğerleri "
                    "daha küçük miktarlarda gereklidir ve eser mineraller olarak adlandırılır (demir, çinko, iyot, florür, selenyum ve bakır)."
                     "Çoğu insan mineral eksikliğinin belirtisini göstermese de bu durum, yeterli mineral alındığı veya yeterli ve"
                    " sağlıklı beslenildiği anlamına gelmez. 1 Vücutta ihtiyaç duyulan miktar ise mineralin önemini gösteren bir gösterge değildir. ",
                style: TextStyle(fontSize: 23.0),
              ),
            ),
            FloatingActionButton(onPressed:(){
              Navigator.push(context, MaterialPageRoute(builder:(context)=>Besinler()));
            },

              child: const Icon(Icons.home),
              backgroundColor:Colors.grey.shade500,


            ),
          ],

        ) ,
      )
    );
  }
}
