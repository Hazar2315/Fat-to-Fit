import 'package:flutter/material.dart';
import 'package:okulproje/Antrenman%20Listeleri/Basit.dart';
import 'package:okulproje/Antrenman%20Listeleri/Orta.dart';

class Antrenman extends StatefulWidget {
  @override
  _AntrenmanState createState() => _AntrenmanState();
}

class _AntrenmanState extends State<Antrenman> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children:<Widget> [
            Container(
              padding:EdgeInsets.all(15.0) ,
              alignment: Alignment.topCenter,
              child: new Image.asset('assets/images/spor-2.jpg'),),
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
                      MaterialPageRoute(builder:(context)=>Basit())
                  );
                },
                child: Text('Basit Antrenman '),



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
                      MaterialPageRoute(builder:(context)=>Orta())
                  );
                },
                child: Text('Orta Antrenman '),



              ),
            )
          ],
        ),
      ),
    );
  }
}
