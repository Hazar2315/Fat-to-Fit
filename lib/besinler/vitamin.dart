import 'package:flutter/material.dart';
import 'package:okulproje/besinler/besinler.dart';

class Vitamin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: Text("Vitaminler"),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.topCenter,
              child: new Image.asset("assets/images/vitaminler.jpg"),
            ),
            Container(

              padding: EdgeInsets.all(15.0),
              child: Text("Vitamin Nedir"
                  "Vitaminler, vücuttaki tüm organların ve sistemlerin sağlıklı\n"
                  " bir şekilde çalışmasını sağlayan bileşiklerdir. Vitamin ve\n "
                  "mineraller tüm sebze - meyve ve yiyecek türlerinde bulunur\n."
                  "Vitamin Çeşitleri Nelerdir?\n"
                  "Vitaminler suda eriyen ve yağda eriyen vitaminler olmak üzere ikiye ayrılır.\n"
                  "Suda eriyen vitamin çeşitleri: C, B1, B2 ve B6 vitamini.\n"
                  "Yağda eriyen vitamin çeşitleri: A, D, E, K ve folik asit.\n"
                  "Vitaminlerin Özellikleri ve Görevleri Nelerdir?\n"
                  "\n"
                  "1- A Vitamini:\n"
                  "A vitamini göz ve diş sağlığına iyi gelen bir vitamin türüdür.\n"
                  " Diş etlerini beslediği için çekilme ve kanama problemlerinin önüne geçer.\n"
                  " Ödemlerin çok daha kısa sürede vücuttan atılmasını\n "
                  " A vitamini kansızlığa da iyi gelir.\n"
                  "A vitamini bakımından zengin olan besinler şu şekilde sıralanabilir\n"
                  ": Yeşil elma, armut, baklagillerden bezelye, barbunya ve fasulye,\n "
                  "nane, tarçın ve ıspanak.\n"
                  "\n"
                  "2- B Vitamini:\n"
                  "Cildin çok daha canlı görünmesini sağlar. Saçların dökülmesini ve\n"
                  " kepek oluşumunu engeller.\n"
                  "\n"
                  "3- C Vitamini:\n"
                  "Suda eriyen bir vitamin türü olan C vitamini en çok elma, mandalina,\n"
                  " portakal, kivi ve greyfurtta bulunur. Özellikle grip ve nezle gibi\n"
                  " kış hastalıklarına karşı vücut direncini arttırır.\n"
                  "\n"
                  "4- D Vitamini:\n"
                  "Hamilelikte vücudun en çok ihtiyaç duyduğu vitaminlerin başında\n"
                  " D vitamini yer alıyor. D vitamini açısından zengin olan \n"
                  "vitaminler: Ton balığı, havuç, marul, yumurtanın sarısı ve bal.\n"
                  "\n"
                  "5- E Vitamini:\n"
                  "En çok E vitamini içeren meyveler muz ve avokado gibi tropikal\n "
                  "meyvelerdir. Mide ve bağırsak sağlığına iyi gelen E vitamini kilo\n"
                  " vermeye de yardımcı olur\n"
                  "\n"
                  "6 - K Vitamini:\n"
                  "Çocukların kemik gelişimini destekleyen K vitamini, kemiklerin\n"
                  " çok daha kuvvetli olmasını sağlıyor. Böbreklerde fazla kalsiyum\n"
                  " birikmesini önleyerek böbrek hastalıklarına karşı korur.\n"
                  "En çok k vitamini içeren besinlerin başında süt ve yoğurt geliyor.\n"
                  " Beslenme uzmanlarına göre yarım yağlı sütler ve laktozsuz yoğurtlar,\n"
                  " diğer süt ürünlerine göre daha fazla vitamin içermektedir.",
              style: new TextStyle(fontSize:15.0),
              ),
            ),
            FloatingActionButton(onPressed:(){
              Navigator.push(context, MaterialPageRoute(builder:(context)=>Besinler()));
            },

              child: const Icon(Icons.home),
              backgroundColor:Colors.deepOrange,


            ),

          ],
        ),
      ),
    );
  }
}
