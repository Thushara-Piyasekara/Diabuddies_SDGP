import 'package:flutter/material.dart';

class FirstMealPage extends StatefulWidget {
  const FirstMealPage({Key? key}) : super(key: key);

  @override
  State<FirstMealPage> createState() => _FirstMealPageState();
}

class _FirstMealPageState extends State<FirstMealPage> {
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

              icon: const Icon(Icons.person),

              onPressed: () {

                // Handle home icon press

              },

            ),

          ],

        ),


        body: Stack(

          children: [

            const Positioned(

              top: 0,

              left: 0,

              child: Text(

                'Blood Glucose Level',

                style: TextStyle(fontSize: 20),

              ),

            ),



            Center(

              //top: 10,

              //left: 40,

              child: Column(

                children: [

                  Image.network(

                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXTxXbJtRTJzcisw_L73_xlovINmbzDtcGEQ&usqp=CAU', // Replace with your image URL

                    width: 200,

                    height: 200,

                  ),

                ],

              ),

            ),



            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  // Handle predict button press
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  foregroundColor: MaterialStateProperty.all(Colors.green),
                ),
                icon: Image.network(
                  'data:image/png;base64,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',
                  width: 100,
                  height: 100,
                ), // Use a network image instead of a local asset
                label: const Text(
                  'Add Meal\n   Data',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),


            const SizedBox(height: 33), // Add 16 pixels of vertical space



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