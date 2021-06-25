import 'package:flutter/material.dart';
class Hakkimda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          title: new Text('Hakkımda',style: TextStyle(
            color: Colors.white,
          ),
          ),


        ),
        body: ListView(
          children: <Widget>[
            Container(
              padding:EdgeInsets.all(15.0) ,
              alignment: Alignment.topCenter,
              child: new Image.asset('assets/images/amblem.png'),
            ),
            Container(
              padding: EdgeInsets.all(15.0),
              child: new Text('Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR '
                  'tarafından yürütülen 3301456 kodlu MOBİL PROGRAMLAMA dersi kapsamında '
                  '183301124 numaralı Hazar Ersöz tarafından 30 Nisan 2021 günü yapılmıştır.'),
            ),
          ],
        ),

    );
  }
}
