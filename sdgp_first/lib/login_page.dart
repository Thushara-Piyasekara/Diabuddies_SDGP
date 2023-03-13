import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:sdgp_first/forgot_page.dart';
import 'package:sdgp_first/signup_page.dart';

import 'add_meal_page.dart';
import 'auth_services.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController=TextEditingController();
  final passwordController=TextEditingController();
  final _formKey=GlobalKey<FormState>();//ella form elemnts em check pannua key onda pola
  final _authe=FirebaseAuth.instance;
  late String email;
  late String password;
  bool showSpinner=false;

  void loginUser(context) async{
    if(_formKey.currentState!=null && _formKey.currentState!.validate()){//validate ennsn sheyyandu documentation peithu paru(ctrl+b) ella form field da descendent em check pannua
      setState(() {
        showSpinner=true;
      });
      try{
        final user=await _authe.signInWithEmailAndPassword(email: emailController.text.trim(), password: passwordController.text.trim());
        if(user!=null){
          Navigator.push(context, MaterialPageRoute(builder: (context) => FirstMealPage()));
        }
        setState(() {
          showSpinner=false;
        });
      }on FirebaseAuthException catch(e){
        print(e);
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text("${e.message}")
        )
        );
      }
      setState(() {
        showSpinner=false;
      });

    }else{
      print('failed to login');
    }

  }

  signInWithGoogle() async{
    final GoogleSignInAccount? gUser=await GoogleSignIn().signIn();

    final GoogleSignInAuthentication gAuth=await gUser!.authentication;

    final credential=GoogleAuthProvider.credential(
        accessToken: gAuth.accessToken,
        idToken: gAuth.idToken
    );

    try {
      return await FirebaseAuth.instance.signInWithCredential(credential);
    }on FirebaseAuthException catch(e){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("${e.message}")
      )
      );
    }
    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
  }


  //
  // @override
  // void dispose() {
  //   emailController.dispose();
  //   passwordController.dispose();
  //
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    double w=MediaQuery.of(context).size.width;//the width of the screen
    double h=MediaQuery.of(context).size.height;//the height of the screen
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 227, 217, 217),
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              width: w,
              height: h*0.2,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "img/diab.jpg"
                  ),
                  fit: BoxFit.cover// otherwise yhere is a space in corners
                )
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20,top:20,right: 20),
              width: w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Log in",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w400),
                  ),
                  Text("Welcome back! please enter your details",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black),
                  ),
                  SizedBox(height: 40,),

                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 8,right: 8,top: 10),
              decoration: BoxDecoration(
                color: Color.fromARGB(207, 0, 26, 95),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Color.fromARGB(255, 185, 243, 252),width: 8)
              ),
              child: Column(
                children: [
                  SizedBox(height: 30,),
                  Container(//text fields container
                    margin: EdgeInsets.only(left: 20,top:20,right: 20),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Email",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white),
                          ),
                          SizedBox(height: 3,),
                          Container(
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 185, 243, 252),
                                borderRadius: BorderRadius.circular(15),
                                boxShadow:[
                                  BoxShadow(
                                    blurRadius: 10,
                                    spreadRadius: 5,
                                    offset: Offset(1,1),
                                    color: Color.fromARGB(255, 185, 243, 252).withOpacity(0.5),
                                  )
                                ]
                            ),
                            child: TextFormField(
                              validator: (value){
                                if(value!= null && (!EmailValidator.validate(value) || value.isEmpty)){
                                  return "enter valid email";
                                }
                              },
                              cursorColor: Colors.white,
                              autovalidateMode: AutovalidateMode.onUserInteraction,
                              controller: emailController,
                              decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.person,
                                    color: Color.fromARGB(252, 2, 1, 91),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: BorderSide(color: Color.fromARGB(252, 2, 1, 91),width: 2)
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: BorderSide(color: Color.fromARGB(252, 2, 1, 91),width: 1)
                                  ),

                                  labelText: "Enter Your Email",
                                  labelStyle: TextStyle(color:  Color.fromARGB(252, 2, 1, 91),fontWeight: FontWeight.w500),
                                  filled: true,
                                  fillColor: Color.fromARGB(255, 185, 243, 252)
                              ),
                            ),
                          ),
                          SizedBox(height: 20,),
                          Text("Password",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white),
                          ),
                          SizedBox(height: 3,),
                          Container(
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 185, 243, 252),
                                borderRadius: BorderRadius.circular(15),
                                boxShadow:[
                                  BoxShadow(
                                    blurRadius: 10,
                                    spreadRadius: 7,
                                    offset: Offset(1,1),
                                    color: Color.fromARGB(255, 185, 243, 252).withOpacity(0.5),
                                  )
                                ]
                            ),
                            child: TextFormField(
                              autovalidateMode: AutovalidateMode.onUserInteraction,
                              validator: (value){
                                if(value!=null && value.isEmpty){
                                  return "enter valid password";
                                }
                                else if(value!=null && value.length<6){
                                  return "password should be more than 6 characters";
                                }
                              },
                              controller: passwordController,
                              cursorColor: Colors.white,
                              obscureText: true,
                              decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: BorderSide(color: Color.fromARGB(252, 2, 1, 91),width: 2)
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: BorderSide(color: Color.fromARGB(252, 2, 1, 91),width: 1)
                                  ),
                                  prefixIcon: Icon(
                                    Icons.lock,
                                    color: Color.fromARGB(252, 2, 1, 91),
                                  ),
                                  labelText: "Enter Your Password",
                                  labelStyle: TextStyle(color: Color.fromARGB(252, 2, 1, 91),fontWeight: FontWeight.w500),
                                  filled: true,
                                  fillColor: Color.fromARGB(255, 185, 243, 252)

                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(right: 20,top: 15),
                      alignment: Alignment.centerRight,
                      child:
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPasswordPage()));
                        },
                        focusColor: Color.fromARGB(255, 87, 169, 182),
                        child: Text("forgot password?",
                          style: TextStyle(color: Colors.white),),
                      )),
                  Container(
                    child: Column(
                      children: [
                        SizedBox(height: 20,),
                        ElevatedButton(
                            onPressed: () {
                              loginUser(context);
                            },
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.zero,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            child: Ink(
                              decoration: BoxDecoration(
                                  gradient: const LinearGradient(colors: [Color.fromARGB(252, 2, 1, 91),Color.fromARGB(255, 87, 169, 182)],begin: Alignment.topLeft),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Container(
                                width: 250,
                                height: 43,
                                alignment: Alignment.center,
                                child: const Text('Sign in',
                                  style: const TextStyle(fontSize: 24),
                                ),
                              ),
                            )
                        ),
                        SizedBox(height: 5,),
                        Text("-OR-",
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color:Colors.white)),
                        SizedBox(height: 5,),
                        ElevatedButton(
                            onPressed: () {
                              try{
                                signInWithGoogle();
                              }on FirebaseAuthException catch(e){
                                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                    content: Text("${e.message}")
                                )
                                );
                              }
                            },
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.zero,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            child: Ink(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(213, 255, 255, 255),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Container(
                                width: 250,
                                height: 43,
                                alignment: Alignment.center,
                                child: const Text('sign in with Google',
                                    style: TextStyle(fontSize: 17,color: Colors.black)
                                ),
                              ),
                            )
                        ),
                        SizedBox(height: 35,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                                "Don't have an account? ",
                              style: TextStyle(color: Colors.white),
                            ),
                            InkWell(
                              child: Text("Sign up",style: TextStyle(color: Color.fromARGB(255, 87, 169, 182)),),
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage()));
                              },
                              focusColor: Color.fromARGB(255, 87, 169, 182),

                            )

                          ],
                        ),
                        SizedBox(height: 5,),
                      ],
                    ),
                  ),
                ],
              ),
            )


          ],
        ),
      ),
    );
  }
}
