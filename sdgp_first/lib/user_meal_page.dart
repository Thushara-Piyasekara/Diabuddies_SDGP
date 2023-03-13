import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserMeal extends StatefulWidget {
  const UserMeal({Key? key}) : super(key: key);

  @override
  State<UserMeal> createState() => _UserMealState();
}

class _UserMealState extends State<UserMeal> {

  TextEditingController meal1 = TextEditingController();
  late String meal_1;
  TextEditingController weight1 = TextEditingController();
  late String weight_1;
  TextEditingController meal2 = TextEditingController();
  late String meal_2;
  TextEditingController weight2 = TextEditingController();
  late String weight_2;
  TextEditingController meal3 = TextEditingController();
  late String meal_3;
  TextEditingController weight3 = TextEditingController();
  late String weight_3;
  TextEditingController meal4 = TextEditingController();
  late String meal_4;
  TextEditingController weight4 = TextEditingController();
  late String weight_4;
  TextEditingController meal5 = TextEditingController();
  late String meal_5;
  TextEditingController weight5 = TextEditingController();
  late String weight_5;
  TextEditingController meal6 = TextEditingController();
  late String meal_6;
  TextEditingController weight6 = TextEditingController();
  late String weight_6;
  TextEditingController meal7 = TextEditingController();
  late String meal_7;
  TextEditingController weight7 = TextEditingController();
  late String weight_7;
  TextEditingController meal8 = TextEditingController();
  late String meal_8;
  TextEditingController weight8 = TextEditingController();
  late String weight_8;



  final GlobalKey<FormState> formKey=GlobalKey<FormState>();

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
                controller: meal1,

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
                controller: meal2,
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
                controller: meal3,
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
                controller: meal4,
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
                controller: meal5,
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
                controller: meal6,

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
                controller: meal7,

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
                controller: meal8,
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
                controller: weight3,

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
                controller: weight2,
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
                controller: weight1,
                decoration: InputDecoration(
                  // Add text to the label
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.0), // Add a border radius
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
                controller: weight4,

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
                controller: weight5,

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
                controller: weight6,
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
                controller: weight7,

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
                controller: weight8,

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
          Positioned(
            top:580,
            left:250,
            child: SizedBox(
            //g
            height: 60,
            width: 120,
            child: ElevatedButton.icon(
              onPressed: () {
               formKey.currentState?.save();
               meal_1=meal1.text;
               meal_2=meal2.text;
               meal_3=meal3.text;
               meal_4=meal4.text;
               meal_5=meal5.text;
               meal_6=meal6.text;
               meal_7=meal7.text;
               meal_8=meal8.text;
               weight_1=weight1.text;
               weight_2=weight2.text;
               weight_3=weight3.text;
               weight_4=weight4.text;
               weight_5=weight5.text;
               weight_6=weight6.text;
               weight_7=weight7.text;
               weight_8=weight8.text;

               print("meal1 : "+ meal_1);
               print("weight_1 : "+  weight_1);
               print("meal2 : "+ meal_2);
               print("weight_2 : "+  weight_2);
               print("meal3 : "+ meal_3);
               print("weight_3 : "+  weight_3);
               print("meal4 : "+ meal_4);
               print("weight_4 : "+  weight_4);
               print("meal5 : "+ meal_5);
               print("weight_5 : "+  weight_5);
               print("meal6 : "+ meal_6);
               print("weight_6 : "+  weight_6);
               print("meal7 : "+ meal_7);
               print("weight_7 : "+  weight_7);
               print("meal8 : "+ meal_8);
               print("weight_8 : "+  weight_8);

               },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                foregroundColor: MaterialStateProperty.all(Colors.green),
              ),
              icon: const IconTheme(
                data: IconThemeData(size: 30,color: Colors.green),
                child: Icon(Icons.fastfood_rounded),

              ), // Use a network image instead of a local asset
              label: const Text(
                'Enter',
                style: TextStyle(fontSize: 20),

              ),
            ),
          ),)
        ],
      ),
    );

  }
}
