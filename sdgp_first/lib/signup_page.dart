import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sdgp_first/home_page.dart';
class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _auth=FirebaseAuth.instance;
  late String email;
  late String password;
  @override
  Widget build(BuildContext context) {
    double w=MediaQuery.of(context).size.width;//the width of the screen
    double h=MediaQuery.of(context).size.height;//the height of the screen
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 227, 217, 217),
      body: ListView(
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
                Text("Sign Up",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w400),
                ),
                Text("Let’s create a new account!",
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
                          onChanged:(value){
                            email=value;
                          },
                          keyboardType: TextInputType.emailAddress,
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
                          onChanged: (value){
                            password=value;
                          },
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
                Container(
                  child: Column(
                    children: [
                      SizedBox(height: 30,),
                      ElevatedButton(
                          onPressed: () async{
                            try{
                              final newUser=await _auth.createUserWithEmailAndPassword(email: email, password: password);
                              if(newUser != null){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                                  // MaterialPageRoute, which is useful because it transitions to the new route using a platform-specific animation.
                              }
                            }catch(e){
                              print(e);
                            }
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
                              child: const Text('Sign up',
                                style: const TextStyle(fontSize: 24),
                              ),
                            ),
                          )
                      ),
                      SizedBox(height:10),
                      Text("-OR-",
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color:Colors.white)),
                      ElevatedButton(
                          onPressed: (){},
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
                              child: const Text('sign up with Google',
                                style: TextStyle(fontSize: 17,color: Colors.black)
                              ),
                            ),
                          )
                      ),
                      SizedBox(height:10),
                      SizedBox(height: 45,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an account? ",
                            style: TextStyle(color: Colors.white),
                          ),
                          InkWell(
                            child: Text("Sign in",style: TextStyle(color: Color.fromARGB(255, 87, 169, 182)),),
                            onTap: (){

                            },
                            focusColor: Color.fromARGB(255, 87, 169, 182),

                          )

                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10,),
              ],
            ),
          )


        ],
      ),

    );
  }
}
