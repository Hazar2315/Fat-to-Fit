import 'package:flutter/material.dart';
import 'package:okulproje/DiyetListeleri/Ag%C4%B1r.dart';
import 'package:okulproje/DiyetListeleri/Hafif.dart';
import 'package:okulproje/DiyetListeleri/Orta.dart';



class DiyetListeleri extends StatefulWidget {
  @override
  _DiyetListeleriState createState() => _DiyetListeleriState();
}

class _DiyetListeleriState extends State<DiyetListeleri> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children:<Widget> [
            Container(
              padding:EdgeInsets.all(15.0) ,
              alignment: Alignment.topCenter,
              child: new Image.asset('assets/images/liste.jpg'),),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(5),
              child:
              RaisedButton(color: Colors.greenAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0)
                ),
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder:(context)=>Hafif())
                  );
                },
                child: Text('Akdeniz Diyeti '),



              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(5),
              child:
              RaisedButton(color: Colors.greenAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0)
                ),
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder:(context)=>Ortak())
                  );
                },
                child: Text('Dükan Diyeti '),



              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(5),
              child:
              RaisedButton(color: Colors.greenAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0)
                ),
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder:(context)=>Agir())
                  );
                },
                child: Text('İsveç Diyeti '),



              ),
            )
          ],
        ),
      ),
    );
  }
}
