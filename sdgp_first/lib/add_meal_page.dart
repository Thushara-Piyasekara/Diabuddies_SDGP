import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sdgp_first/login_page.dart';

class FirstMealPage extends StatefulWidget {
  const FirstMealPage({Key? key}) : super(key: key);

  @override
  State<FirstMealPage> createState() => _FirstMealPageState();
}

class _FirstMealPageState extends State<FirstMealPage> {
  final _auth2=FirebaseAuth.instance;

  @override
  void initState() {
    // TODO: implement initState
    getCurrentUser();
  }
  void getCurrentUser() {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {//we are using authStateChanges bcs FireBaseauth.instance.currentUser doesnt availabe for immediately when sign in with google
      //but FireBaseauth.instance.currentUser fine when sign in using email and password instead of google sign in
      if (user != null) {
        // In this code User is signed in, you can access the user object via `currentUser` or `user` parameter.
        final user=_auth2.currentUser;//it will null if anyone not signed in
        print(user!.email);
        print('User is signed in!');
      } else {
        // User is signed out.
        print('User is signed out!');
      }
    });
    // if(user!=null){
    //   print(user.email);
    // }else{
    //   print("there is no email");
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Patient info'),
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              // Handle menu icon press
            },
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.exit_to_app),
              onPressed: () {
                _auth2.signOut();
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
              },
            ),
          ],
        ),
        body: ListView(
          children: [
            Container(
              child: Column(
                children: [
                  Text(
                    'Blood Glucose Level',
                    style: TextStyle(fontSize: 20),
                  ),
                  Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXTxXbJtRTJzcisw_L73_xlovINmbzDtcGEQ&usqp=CAU', // Replace with your image URL
                    width: 200,
                    height: 200,
                  ),
              ElevatedButton.icon(
                onPressed: () {
                  // Handle predict button press
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  foregroundColor: MaterialStateProperty.all(Colors.green),
                ),
                icon: Icon(
                    Icons.camera,
                    width
                ), // Use a network image instead of a local asset
                label: const Text(
                  'Add Meal\n   Data',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
            const SizedBox(height: 33),
                ],
              ),
            ),
            const Positioned(
              top: 0,
              left: 0,
              child:
            ),
            Center(
              child: Column(
                children: [

                ],
              ),
            ),
            Center(
              child:  // Add 16 pixels of vertical space
          ],
        ),

        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.green,
          backgroundColor: const Color.fromARGB(255, 12, 119, 55),
          onTap: (index) {},
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.heart_broken_sharp),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '',
            ),
          ],
        ),
    );
  }


}