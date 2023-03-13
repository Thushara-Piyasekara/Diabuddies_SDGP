import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserMeal extends StatefulWidget {
  const UserMeal({Key? key}) : super(key: key);

  @override
  State<UserMeal> createState() => _UserMealState();
}

class _UserMealState extends State<UserMeal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meal Information'),
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
            top: 50,
            left: 120,
            child: Text(
              'Meal',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const Positioned(
            top: 50,
            left: 300,
            child: Text(
              'Weight',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const Positioned(
            top: 120,
            left: 20,
            child: Text(
              'Meal_1',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
          const Positioned(
            top: 180,
            left: 20,
            child: Text(
              'Meal_2',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
          const Positioned(
            top: 240,
            left: 20,
            child: Text(
              'Meal_3',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
          const Positioned(
            top: 300,
            left: 20,
            child: Text(
              'Meal_4',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
          const Positioned(
            top: 360,
            left: 20,
            child: Text(
              'Meal_5',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
          const Positioned(
            top: 420,
            left: 20,
            child: Text(
              'Meal_6',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
          const Positioned(
            top: 480,
            left: 20,
            child: Text(
              'Meal_7',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
          const Positioned(
            top: 540,
            left: 20,
            child: Text(
              'Meal_8',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),



          Positioned(
            top: 100,
            left: 80,
            child: Container(
              width: 180,
              height: 40,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  // Add text to the label
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0), // Add a border radius
                    borderSide: const BorderSide(color: Colors.grey, width: 1.0), // Add a border color and width
                  ),
                ),
                onSubmitted: (text) {

                },
              ),
            ),
          ),



          Positioned(
            top: 160,
            left: 80,
            child: Container(
              width: 180,
              height: 40,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  // Add text to the label
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0), // Add a border radius
                    borderSide: const BorderSide(color: Colors.grey, width: 1.0), // Add a border color and width
                  ),
                ),
                onChanged: (text) {
                  // Handle text input changes
                },
              ),
            ),
          ),


          Positioned(
            top: 220,
            left: 80,
            child: Container(
              width: 180,
              height: 40,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  // Add text to the label
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0), // Add a border radius
                    borderSide: const BorderSide(color: Colors.grey, width: 1.0), // Add a border color and width
                  ),
                ),
                onChanged: (text) {
                  // Handle text input changes
                },
              ),
            ),
          ),
          Positioned(
            top: 280,
            left: 80,
            child: Container(
              width: 180,
              height: 40,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  // Add text to the label
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0), // Add a border radius
                    borderSide: const BorderSide(color: Colors.grey, width: 1.0), // Add a border color and width
                  ),
                ),
                onChanged: (text) {
                  // Handle text input changes
                },
              ),
            ),
          ),
          Positioned(
            top: 340,
            left: 80,
            child: Container(
              width: 180,
              height: 40,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  // Add text to the label
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0), // Add a border radius
                    borderSide: const BorderSide(color: Colors.grey, width: 1.0), // Add a border color and width
                  ),
                ),
                onChanged: (text) {
                  // Handle text input changes
                },
              ),
            ),
          ),
          Positioned(
            top: 400,
            left: 80,
            child: Container(
              width: 180,
              height: 40,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  // Add text to the label
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0), // Add a border radius
                    borderSide: const BorderSide(color: Colors.grey, width: 1.0), // Add a border color and width
                  ),
                ),
                onChanged: (text) {
                  // Handle text input changes
                },
              ),
            ),
          ),
          Positioned(
            top: 460,
            left: 80,
            child: Container(
              width: 180,
              height: 40,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  // Add text to the label
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0), // Add a border radius
                    borderSide: const BorderSide(color: Colors.grey, width: 1.0), // Add a border color and width
                  ),
                ),
                onChanged: (text) {
                  // Handle text input changes
                },
              ),
            ),
          ),
          Positioned(
            top: 520,
            left: 80,
            child: Container(
              width: 180,
              height: 40,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  // Add text to the label
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0), // Add a border radius
                    borderSide: const BorderSide(color: Colors.grey, width: 1.0), // Add a border color and width
                  ),
                ),
                onChanged: (text) {
                  // Handle text input changes
                },
              ),
            ),
          ),

          Positioned(
            top: 220,
            left: 280,
            child: Container(
              width: 100,
              height: 40,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  // Add text to the label
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0), // Add a border radius
                    borderSide: const BorderSide(color: Colors.grey, width: 1.0), // Add a border color and width
                  ),
                ),
                onChanged: (text) {
                  // Handle text input changes
                },
              ),
            ),
          ),

          Positioned(
            top: 160,
            left: 280,
            child: Container(
              width: 100,
              height: 40,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  // Add text to the label
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0), // Add a border radius
                    borderSide: const BorderSide(color: Colors.grey, width: 1.0), // Add a border color and width
                  ),
                ),
                onChanged: (text) {
                  // Handle text input changes
                },
              ),
            ),
          ),



          Positioned(
            top: 100,
            left: 280,
            child: Container(
              width: 100,
              height: 40,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  // Add text to the label
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0), // Add a border radius
                    borderSide: const BorderSide(color: Colors.grey, width: 1.0), // Add a border color and width
                  ),
                ),
                onChanged: (text) {
                  // Handle text input changes
                },
              ),
            ),
          ),
          Positioned(
            top: 280,
            left: 280,
            child: Container(
              width: 100,
              height: 40,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  // Add text to the label
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0), // Add a border radius
                    borderSide: const BorderSide(color: Colors.grey, width: 1.0), // Add a border color and width
                  ),
                ),
                onChanged: (text) {
                  // Handle text input changes
                },
              ),
            ),
          ),
          Positioned(
            top: 340,
            left: 280,
            child: Container(
              width: 100,
              height: 40,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  // Add text to the label
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0), // Add a border radius
                    borderSide: const BorderSide(color: Colors.grey, width: 1.0), // Add a border color and width
                  ),
                ),
                onChanged: (text) {
                  // Handle text input changes
                },
              ),
            ),
          ),
          Positioned(
            top: 400,
            left: 280,
            child: Container(
              width: 100,
              height: 40,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  // Add text to the label
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0), // Add a border radius
                    borderSide: const BorderSide(color: Colors.grey, width: 1.0), // Add a border color and width
                  ),
                ),
                onChanged: (text) {
                  // Handle text input changes
                },
              ),
            ),
          ),
          Positioned(
            top: 460,
            left: 280,
            child: Container(
              width: 100,
              height: 40,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  // Add text to the label
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0), // Add a border radius
                    borderSide: const BorderSide(color: Colors.grey, width: 1.0), // Add a border color and width
                  ),
                ),
                onChanged: (text) {
                  // Handle text input changes
                },
              ),
            ),
          ),
          Positioned(
            top: 520,
            left: 280,
            child: Container(
              width: 100,
              height: 40,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  // Add text to the label
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0), // Add a border radius
                    borderSide: const BorderSide(color: Colors.grey, width: 1.0), // Add a border color and width
                  ),
                ),
                onChanged: (text) {

                },
              ),
            ),
          ),


        ],
      ),
    );
  }
}
