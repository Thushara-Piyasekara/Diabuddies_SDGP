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

  TextEditingController gluLvl = TextEditingController();
  late String glucose;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  List<String> _mealUnits = ['g', 'ml'];
  String _selectedMealUnits = 'g';

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
            left: 70,
            child: Text(
              'Meal',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),

          const Positioned(
            top: 50,
            left: 200,
            child: Text(
              'Weight',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const Positioned(
            top: 50,
            left: 320,
            child: Text(
              'Unit',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const Positioned(
            top: 320,
            left: 20,
            child: Text(
              'Blood Glucose Level ',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),



           Positioned(
            top: 80,
            left: 1,
             child: Container(
              width: 180,
              height: 60,
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
            top: 300,
            left: 200,
            child: Container(
              width: 180,
              height: 60,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: gluLvl,
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
            top: 80,
            left: 180,
            child: Container(
              width: 100,
              height: 60,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: weight1,
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
            top: 80,
            left: 290,
            child: SizedBox(
              width: 80,
              child: DropdownButtonFormField<String>(
                value: _selectedMealUnits,
                items: _mealUnits.map((String mealType) {
                  return DropdownMenuItem<String>(
                    value: mealType,
                    child: Text(mealType),
                  );
                }).toList(),
                onChanged: (String? value) {
                  setState(() {
                    _selectedMealUnits = value!;
                  });
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  labelText: 'Select a meal unit',
                ),
              ),
            ),
          ),


          Positioned(
            top: 200,
            left: 150,
            child: SizedBox(
              width: 200,
              child: TextFormField(
                controller: meal1,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  labelText: 'Enter the meal name',
                ),
              ),
            ),
          ),
          Positioned(
            top: 380,
            left: 150,
            child: SizedBox(
              height: 60,
              width: 120,
              child: ElevatedButton.icon(
                onPressed: () {
                  formKey.currentState?.save();
                  meal_1 = meal1.text;

                  print('Meal type: $_selectedMealUnits');
                  print('Meal name: $meal_1');
                },
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all(Colors.white),
                  foregroundColor: MaterialStateProperty.all(Colors.green),
                ),
                icon: const IconTheme(
                  data: IconThemeData(size: 30, color: Colors.green),
                  child: Icon(Icons.fastfood_rounded),
                ), // Use a network image instead of a local asset
                label: const Text(
                  'Enter',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
