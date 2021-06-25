import 'package:flutter/material.dart';
import 'package:okulproje/besinler/besinler.dart';
class Yaglar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellowAccent.shade700,
          title: Text("Yağlar"),
        ),
        body: ListView(
          children:<Widget> [
            Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.topCenter,
              child: new Image.asset('assets/images/iyi_yaglar.jpg'),
            ),
            Container(
              padding: EdgeInsets.all(15.0),
              child: Text("Sağlıklı beslenmek için günlük alınan enerjinin\n"
                  " %30’unun yağlardan gelmesi gerekir. Su, protein,\n"
                  " karbonhidrat, vitamin ve mineraller gibi yağ da\n"
                  "vücudumuzun gereksinimi olan temel besin öğelerinden biri.\n"
                  " Yağlar önerilen düzeylerde tüketildiğinde vücut\n"
                  " fonksiyonlarının yerine getirilmesini sağlarDoğru\n"
                  " beslenmek için önerilen düzeylerde yağ tüketme\n "
                  "ve bu dengeyi sağlamak gereklidir. Bunun için\n, "
                  "doymuş yağ içeren kırmızı et ve et ürünleri,\n "
                  "yağlı süt ve süt ürünlerine beslenmede daha\n "
                  "az yer verilip, ağırlıklı olarak meyve, sebze ve\n"
                  " bitkisel kökenli yağlar kullanılmalıdır"
              , style: new TextStyle(fontSize: 15.0),

            ),),

           FloatingActionButton(onPressed:(){
             Navigator.push(context, MaterialPageRoute(builder:(context)=>Besinler()));
           },
             child: const Icon(Icons.home),
             backgroundColor:Colors.yellowAccent.shade700,

           ),




          ],
        ),
      ),
    );
  }
}
