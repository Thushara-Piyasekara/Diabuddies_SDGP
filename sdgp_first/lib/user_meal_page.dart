import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserMeal extends StatefulWidget {
  const UserMeal({Key? key}) : super(key: key);

  @override
  State<UserMeal> createState() => _UserMealState();
}

class _UserMealState extends State<UserMeal> {
  TextEditingController meal1 = TextEditingController();
  late String mealone;
  TextEditingController meal2 = TextEditingController();
  late String mealtwo;
  TextEditingController meal3 = TextEditingController();
  late String mealthree;
  TextEditingController meal4 = TextEditingController();
  late String mealfour;
  TextEditingController meal5 = TextEditingController();
  late String mealfive;
  TextEditingController meal6 = TextEditingController();
  late String mealsix;
  TextEditingController meal7 = TextEditingController();
  late String mealseven;
  TextEditingController meal8 = TextEditingController();
  late String mealeight;
  TextEditingController mealA = TextEditingController();
  late String mealAA;
  TextEditingController mealB = TextEditingController();
  late String mealBB;
  TextEditingController mealC = TextEditingController();
  late String mealCC;
  TextEditingController mealD = TextEditingController();
  late String mealDD;
  TextEditingController mealE = TextEditingController();
  late String mealEE;
  TextEditingController mealF = TextEditingController();
  late String mealFF;
  TextEditingController mealG = TextEditingController();
  late String mealGG;
  TextEditingController mealH = TextEditingController();
  late String mealHH;
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
                controller: mealC,
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
                controller: mealB,
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
                controller: mealA,
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
                controller: mealD,
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
                controller: mealE,
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
                controller: mealF,
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
                controller: mealG,
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
                controller: mealH,
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
               print(meal1.text);
               mealone=meal1.text;
               print("meal_1 : "+ mealone);
               print(meal2.text);
               mealtwo=meal2.text;
               print("meal_2 : "+ mealtwo);
               print(meal3.text);
               mealthree=meal3.text;
               print("meal_3 : "+ mealfour);
               print(meal4.text);
               mealfour=meal4.text;
               print("meal_4 : "+ mealfour);
               print(meal5.text);
               mealfive=meal5.text;
               print("meal_5 : "+ mealfive);
               print(meal6.text);
               mealsix=meal6.text;
               print("meal_6 : "+ mealsix);
               print(meal7.text);
               mealseven=meal7.text;
               print("meal_7 : "+ mealseven);
               print(meal8.text);
               mealeight=meal8.text;
               print("meal_8 : "+ mealeight);
               print(mealA.text);
               mealAA=mealA.text;
               print("meal_1_Weight : "+ mealAA);
               print(mealB.text);
               mealBB=mealB.text;
               print("meal_2_Weight : "+ mealBB);
               print(mealC.text);
               mealCC=mealC.text;
               print("meal_3_Weight : "+ mealCC);
               print(mealD.text);
               mealDD=mealD.text;
               print("meal_4_Weight : "+ mealDD);
               print(mealE.text);
               mealEE=mealE.text;
               print("meal_5_Weight : "+ mealEE);
               print(mealF.text);
               mealFF=mealF.text;
               print("meal_6_Weight : "+ mealFF);
               print(mealG.text);
               mealGG=mealG.text;
               print("meal_7_Weight : "+ mealGG);
               print(mealH.text);
               mealHH=mealH.text;
               print("meal_8_Weight : "+ mealHH);

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
