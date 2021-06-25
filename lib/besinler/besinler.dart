import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:okulproje/besinler/karbonhidrat.dart';
import 'package:okulproje/besinler/mineral.dart';
import 'package:okulproje/besinler/protein.dart';
import 'package:okulproje/besinler/su.dart';
import 'package:okulproje/besinler/vitamin.dart';
import 'package:okulproje/besinler/ya%C4%9F.dart';
import 'package:okulproje/home.dart';
class Besinler extends StatefulWidget{
  @override
  _BesinlerState createState()=>_BesinlerState();
}
class _BesinlerState extends State<Besinler>{
  List _options = ['Protein', 'Karbonhidrat', 'Yağ', 'Vitamin', 'Mineral'];
  @override
  Widget build(BuildContext context){

return MaterialApp(
  debugShowCheckedModeBanner: false,
  home:Scaffold(
  appBar: AppBar(
backgroundColor: Colors.greenAccent,
    title: Text("beslenmenin önemi"),
    actions:<Widget>[
      PopupMenuButton(itemBuilder:(content)=>[
        PopupMenuItem(
            value: 1,
            child: Text("karbonhidratlar"),
        ),
        PopupMenuItem(
          value: 2,
          child: Text("yağlar"),
        ),
        PopupMenuItem(
          value: 3,
          child: Text("proteinler"),
        ),
        PopupMenuItem(
          value: 4,
          child: Text("vitaminler"),
        ),
        PopupMenuItem(
          value: 5,
          child: Text("mineraller"),
        ),
        PopupMenuItem(
          value: 6,
          child: Text("su"),
        ),
      ],
        onSelected: (int menu){
        if(menu==1){
          Navigator.push(context,
          MaterialPageRoute(builder:(context)=>Karbonhidrat())
          );

        }
        else if(menu==2){
          Navigator.push(context,
              MaterialPageRoute(builder:(context)=>Yaglar())
          );
        }
        else if(menu==3){
          Navigator.push(context,
              MaterialPageRoute(builder:(context)=>Protein())
          );
        }
        else if(menu==4){
          Navigator.push(context,
              MaterialPageRoute(builder:(context)=>Vitamin())
          );
        }
        else if(menu==5){
          Navigator.push(context,
              MaterialPageRoute(builder:(context)=>Mineral())
          );
        }
        else if(menu==6){
          Navigator.push(context,
              MaterialPageRoute(builder:(context)=>Su())
          );
        }
        },
      ),

    ],
  ),

  body: ListView(

children: <Widget>[
  Container(
      padding:EdgeInsets.all(15.0) ,
      alignment: Alignment.topCenter,
      child: new Image.asset('assets/images/besin.jpg'),),
  Container(
    padding: EdgeInsets.all(15.0),

    child: new Text("Bireyleri sağlıklı vücuda sahip yapan en önemli etkenlerden "
        "biri beslenme alışkanlıklarıdır. Doğru beslenme alışkanlığına sahip bireyler "
        "sağlıklı bireylerdir. Bireylerin beslenme stillerini değiştirmeleri ve doğru "
        "beslenmeleri pek çok hastalıktan koruma sağlamakta, bazen şikayetleri hafifletmekte, "
        "bazen de dengeli beslenme bireyin sağlığına tamamen kavuşmasına yardımcı olmaktadır. "
        "Beslenme ve bu kapsamda diyet programları, bireylerin yaşam koşulları, fiziksel özelikleri,"
        " yaşı, boyu, kilosu, genetik özellikleri, geçmişteki ve hali hazırdaki rahatsızlıkları vb. "
        "tüm faktörler değerlendirilerek hazırlandığında beklenen sonucu verecektir.",
style: new TextStyle(fontSize: 23.0),

    ),
  ),
  FloatingActionButton(onPressed:(){
    Navigator.push(context, MaterialPageRoute(builder:(context)=>Home()));
  },
    child: const Icon(Icons.home),
    backgroundColor:Colors.greenAccent,
  )
],



  ),
  )
);
  }
}