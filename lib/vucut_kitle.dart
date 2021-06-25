import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:okulproje/Antrenman%20Listeleri/Basit.dart';


class Vucut extends StatefulWidget{
  @override
  _VucutState createState()=>_VucutState();
}
class _VucutState extends State<Vucut>{
double boy,kilo,vki;
var _formKey=GlobalKey<FormState>();
String sonuc;

  @override
  // TODO: implement widget
  Widget build(BuildContext context){
return Scaffold(
  backgroundColor: Colors.white,
  appBar: AppBar(
  backgroundColor: Colors.greenAccent,
  title: Text("Vücut Kitle indeksi"),
  ),
  body: Container(
    child:SingleChildScrollView(

    child: Form(
      key:_formKey,

      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.topCenter,
            child: new Image.asset('assets/images/splash.png'),
            color: Colors.white,
          ),
          Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.greenAccent),borderRadius: BorderRadius.circular(15)),
            margin: EdgeInsets.all(25),
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: TextFormField(
              keyboardType: TextInputType.number,
              validator: (value) => validateSayi(value),
              onSaved: (value) => boy = double.parse(value) / 100,
              decoration: InputDecoration(
                labelText: "Boy Giriniz. (cm)",
              ),),),
          Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.greenAccent),borderRadius: BorderRadius.circular(15),),
            margin: EdgeInsets.all(25),
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: TextFormField(
              keyboardType: TextInputType.number,
              validator: (value)=>validateSayi(value),
              onSaved: (value)=>kilo=double.parse(value),
              decoration:InputDecoration(
                labelText:"Kilo Giriniz. (kg)",hoverColor: Colors.greenAccent
              ) ,
            ),
          ),
          RaisedButton(
            color: Colors.greenAccent,
            disabledTextColor:Colors.white,
           shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(18.0),
             side: BorderSide(color: Colors.greenAccent)
           ),
            child: Text("Hesapla.."),
            onPressed: (){
              if(_formKey.currentState.validate()){
                _formKey.currentState.save();
                print("$boy $kilo");
                setState(() {
                  vkiHesapla();
                });
              }
            },
          ),
          RaisedButton(
            color: Colors.greenAccent,
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(18.0)
            ),
            onPressed:(){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>(Basit())));
            },
            child: Text('Obezite Grafiği',),
          ),
          vki !=null
        ?Text("Vücut Kitle İndeksi: $vki",
  style:TextStyle(fontSize:24),
        )
        : Text(
    "Lütfen değer Giriniz",
    style: TextStyle(fontSize: 24),
    ),
    sonuc != null
    ? Text(
    "$sonuc",
    style: TextStyle(fontSize: 24),
    )
    :Container(),
        ],
      ),
    ),
    ),
  ),
);
  }
  void vkiHesapla(){
   vki=kilo/(boy*boy);
   vki=double.parse(vki.toStringAsFixed(2));
   if(vki<18.5){
     sonuc="Zayıf 1. diyet listesini seçin ";
   }
   else if(18.5<=vki&&vki<25){
     sonuc="Normal Kilolu Uzak durmanız gereknler listesine dikkat edin";
   }
   else if(25<=vki&&vki<30){
     sonuc="Fazla Kilolu 2.diyet listesini seçin";
   }
   else if(30<=vki&&vki<35){
     sonuc="1.Derece Obezite 3.diyet listesini seçin";
   }
   else if(35<=vki&&vki<40){
     sonuc="2. Derece Obezite 3.diyet listesini seçin";
   }
   else if(40<=vki&&vki<50){
     sonuc="3. Derece Obezite 3.diyet listesini seçin ";
   }
   else if(50<=vki&&vki<60){
     sonuc = "Süper Süper Obezite";
   }
   else if (vki > 60) {
     sonuc = "Süper Süper Obezite";
   }
   else {
     sonuc = "hata!1";
   }
  }
validateSayi(String value) {
  if (value.length < 1) return 'Geçersiz';
  try {
    double.parse(value);
  } catch (e) {
    return "Geçersiz";
  }}
}