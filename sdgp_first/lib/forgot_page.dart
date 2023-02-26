import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {

  final emailController=TextEditingController();

  Future resetPassword() async{
    try{
      await FirebaseAuth.instance.sendPasswordResetEmail(email: emailController.text.trim());
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Reset password email sent")));
    }on FirebaseAuthException catch(e){
      print(e);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("${e.message}")));
    }
  }
  @override
  Widget build(BuildContext context) {
    double w=MediaQuery.of(context).size.width;//the width of the screen
    double h=MediaQuery.of(context).size.height;//the height of the screen
    return Scaffold(
      body: Center(
        child: Container(
          height: 0.6*h,
          width: 0.9*w,
          margin: EdgeInsets.only(left: 8,right: 8,top: 10),
          padding: EdgeInsets.only(left: 20,right: 20),
          decoration: BoxDecoration(
              color: Color.fromARGB(207, 0, 26, 95),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Color.fromARGB(255, 185, 243, 252),width: 8)
            ),
          child: Column(
            children: [
              SizedBox(height: 70,),
              Text("\t\t\t Recieve an Email\n to reset your password",
                style: TextStyle(color: Colors.white,fontSize: 20),
              ),
              SizedBox(height: 50,),
              TextFormField(
                controller: emailController,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)
                  ),
                  prefixIcon: Icon(
                    Icons.email,
                    color:Colors.white
                  ),
                  labelText: "Enter Your Email",
                  labelStyle: TextStyle(color:  Color.fromARGB(255, 185, 243, 252),fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(height: 50,),
              ElevatedButton(
                  onPressed: () async {
                    await resetPassword();
                    Navigator.pop(context);
                  },
                  child: Text("Send Email"))
            ],
          ),
        ),
      ),
    );

  }
}
