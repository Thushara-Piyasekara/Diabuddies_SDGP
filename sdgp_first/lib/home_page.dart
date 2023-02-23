import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _auth2=FirebaseAuth.instance;

  @override
  void initState() {
    // TODO: implement initState
    getCurrentUser();
  }

  void getCurrentUser(){
    final user=_auth2.currentUser;//it will null if anyone not signed in
    if(user!=null){
      print(user.email);
    }else{
      print("there is no email");
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Text('thushara hi babe',style: TextStyle(fontSize: 50),),
          ],
        ),
      ),
    );
  }
}
