import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:google_sign_in/google_sign_in.dart';
class Start extends StatefulWidget {
  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserCredential> googleSignIn() async {
    GoogleSignIn googleSignIn = GoogleSignIn();
    GoogleSignInAccount googleUser = await googleSignIn.signIn();
    if (googleUser != null) {
      GoogleSignInAuthentication googleAuth = await googleUser.authentication;

      if (googleAuth.idToken != null && googleAuth.accessToken != null) {
        final AuthCredential credential = GoogleAuthProvider.credential(
            accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);

        final UserCredential user =
        await _auth.signInWithCredential(credential);

        await Navigator.pushReplacementNamed(context, "/");

        return user;
      } else {
        throw StateError('Missing Google Auth Token');
      }
    } else
      throw StateError('Sign in Aborted');
  }

  navigateToLogin() async {
    Navigator.pushReplacementNamed(context, "Login");
  }

  navigateToRegister() async {
    Navigator.pushReplacementNamed(context, "SignUp");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(

        child: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
    child: Column(
    children: <Widget>[
    SizedBox(height: 35.0),
    Container(

    padding: EdgeInsets.all(15.0),
    height: 400,
    child: Image(
    image: AssetImage("assets/images/diyet.jpg"),
    fit: BoxFit.contain,

    ),
    ),
    SizedBox(height: 20),
    RichText(
    text: TextSpan(
    text: 'Yetis Ustama ',
    style: TextStyle(
    fontSize: 30.0,
    fontWeight: FontWeight.bold,
    color: Colors.redAccent.shade200),
    children: <TextSpan>[
    TextSpan(
    text: 'Hoşgeldiniz',
    style: TextStyle(
    fontSize: 25.0,
    fontWeight: FontWeight.bold,
    color: Colors.black))
    ])),
    SizedBox(height: 10.0),
    Text(
    'İhtiyacınız olan tüm hizmetler için',
    style: TextStyle(color: Colors.black),
    ),
    SizedBox(height: 30.0),
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
    RaisedButton(
    padding: EdgeInsets.only(left: 30, right: 30),
    onPressed: navigateToLogin,
    child: Text(
    'GİRİŞ',
    style: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    ),
    ),
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10.0),
    ),
    color: Colors.redAccent.shade200),
    SizedBox(width: 10.0),
    RaisedButton(
    padding: EdgeInsets.only(left: 30, right: 30),
    onPressed: navigateToRegister,
    child: Text(
    'ÜYE OL',
    style: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    ),
    ),
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10.0),
    ),
    color: Colors.redAccent.shade200),



    ],),
      SignInButton(Buttons.Google,
          text: "Sign up with Google", onPressed: googleSignIn)
    ],),),));}}
