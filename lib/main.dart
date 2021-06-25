import 'Start.dart';
import 'file:///C:/Users/hazar/AndroidStudioProjects/okulproje/lib/Firebase/Login.dart';
import 'file:///C:/Users/hazar/AndroidStudioProjects/okulproje/lib/Firebase/SignUp.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(


      theme: ThemeData(
          primaryColor: Colors.red
      ),
      debugShowCheckedModeBanner: false,
      home:
      Home(),

      routes: <String,WidgetBuilder>{

        "Login" : (BuildContext context)=>Login(),
        "SignUp":(BuildContext context)=>SignUp(),
        "start":(BuildContext context)=>Start(),
      },

    );
  }

}