import 'package:flutter/material.dart';
import 'package:okulproje/besinler/besinler.dart';
class Protein extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent.shade700,
          title: Text("Protein"),
        ),
        body: ListView(

         children: <Widget>[
           Container(
             padding: EdgeInsets.all(15.0),
             alignment: Alignment.topCenter,
             child: new Image.asset("assets/images/protein-1.jpg"),

           ),
           Container(
             padding: EdgeInsets.all(15.0),
             child: Text("Büyüme ve gelişme için temel besin öğelerinden \n"
                 " biri proteinlerdir.Proteinler, birçok hücrenin görevini \n "
                 "yerine getirmesinde rol oynar.  Özellikle bağışıklık sistemini \n "
                 "oluşturan hücrelerin, enzimlerin ve hormonların yapısını \n "
                 "oluştururlar.Kana kırmızı rengini veren hemoglobinin yapımı  \n"
                 "için protein gereklidir.Hayvansal kaynaklı  \n"
                 "proteinler: Et, tavuk, balık, süt ve ürünleri \n"
                 "Bitkisel kaynaklı proteinler: Tahıllar, kuru baklagiller, kuru yemişlerProteinler, aminoasitlerin birleşmesinden oluşur. \n "
                 "Aminoasitlerin bir kısmı vücutta üretilirken, bir kısmı üretilemediği için protein kaynaklı besinlerle alınması gerekir. \n "
                 "Protein içeren besinler tüketildikten sonra, mide ve ince bağırsakta aminoasitlere ayrılıp, kana geçerler. Vücutta yapılamayan elzem aminoasitler, \n"
                 " hayvansal kaynaklı besinlerde daha fazla bulunur. Yeterli miktarlarda elzem aminoasitleri içeren protein kaynakları (et, balık, süt vs.),  \n"
                 "sindirim sisteminde fazla kayba uğramadan vücuda alınır.",
                 style: new TextStyle(fontSize: 15.0),
                 ),

           ),
           FloatingActionButton(onPressed:(){
             Navigator.push(context, MaterialPageRoute(builder:(context)=>Besinler()));
           },

             child: const Icon(Icons.home),
             backgroundColor:Colors.redAccent.shade700,


           ),
         ],
        ),
      ),


    );
  }
}
