import 'package:flutter/material.dart';
import 'package:okulproje/Antrenman%20Listeleri/Antrenman.dart';
import 'package:okulproje/DiyetListeleri/DiyetListeleri.dart';
import 'package:okulproje/grafik.dart';
import 'package:okulproje/hakk%C4%B1mda.dart';
import 'package:okulproje/vucut_kitle.dart';
import 'package:okulproje/besinler/besinler.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
class Home extends StatefulWidget{
  @override
  _HomeState createState()=>_HomeState();
  }
class _HomeState extends State<Home>{
  final FirebaseAuth _auth = FirebaseAuth.instance;
  User user;
  bool isloggedin = false;
  checkAuthentification() async {
    _auth.authStateChanges().listen((user) {
      if (user == null) {
        Navigator.of(context).pushReplacementNamed("start");
      }
    });
  }
  getUser() async {
    User firebaseUser = _auth.currentUser;
    await firebaseUser?.reload();
    firebaseUser = _auth.currentUser;

    if (firebaseUser != null) {
      setState(() {
        this.user = firebaseUser;
        this.isloggedin = true;
      });
    }
  }

  signOut() async {
    _auth.signOut();

    final googleSignIn = GoogleSignIn();
    await googleSignIn.signOut();
  }

  @override
  void initState() {
    super.initState();
    this.checkAuthentification();
    this.getUser();
  }
  @override
  Widget build(BuildContext context){
return Scaffold(
  backgroundColor: Colors.white,
  appBar: AppBar(
    backgroundColor: Colors.greenAccent,
    title: const Text('Fat To Fit',style: TextStyle(
      color: Colors.white,
    ),),
  ),

  body: Container(

      padding: const EdgeInsets.all(25),
      child: !isloggedin
          ? CircularProgressIndicator()
          : Column(
      children:<Widget>[
        Container(
          alignment: Alignment.topCenter,
          child: new Image.asset('assets/images/diyet.jpg',width: 150,height: 150,),
          color: Colors.white,
        ),
        Container(
          color: Colors.white,
          alignment: Alignment.center,
          margin:EdgeInsets.all(10),
        child:
        RaisedButton(
        color: Colors.greenAccent,
          shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(18.0)
          ),
          onPressed:(){
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=>Vucut()));
        },
        child: Text('vücut kitle indeksi',),
        ),
        ),
        Container(
          color: Colors.white,
          alignment: Alignment.center,
          margin:EdgeInsets.all(10),
          child:
          RaisedButton(
            color: Colors.greenAccent,
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(18.0)
            ),
            onPressed:(){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>LineChartSample2()));
            },
            child: Text('Obezite Grafiği',),
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
                 MaterialPageRoute(builder:(context)=>Besinler())
               );
             },
             child: Text('besin grupları '),



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
                  MaterialPageRoute(builder:(context)=>Hakkimda())
              );
            },
            child: Text('Hakkımda '),



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
                  MaterialPageRoute(builder:(context)=>Antrenman())
              );
            },
            child: Text('Antrenman Listeleri '),



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
                  MaterialPageRoute(builder:(context)=>DiyetListeleri())
              );
            },
            child: Text('Diyet Listeleri '),



          ),
        ),
      ],
    )

  ),
);
  }
}
