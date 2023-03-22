
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


TextEditingController meal1 = TextEditingController();
late String meal_1;
TextEditingController weight1 = TextEditingController();
late String weight_1;

TextEditingController gluLvl = TextEditingController();
late String glucose;
final GlobalKey<FormState> formKey = GlobalKey<FormState>();

List<String> _mealUnits = ['g', 'ml'];
String _selectedMealUnits = 'g';

Container CustomFormField1(){
  return Container(
    height: 200,
    child: Row(
      children: [
        Expanded(
          flex: 3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Meal',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              Container(
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
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Weight',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              Container(
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
            ],
          ),
        ),
        Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Blood Glucose Level ',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
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
                      _selectedMealUnits = value!;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      labelText: 'Select a meal unit',
                    ),
                  ),
                ),
              ],
            ))
      ],
    ),
  );
}
Container CustomFormField2(){
  return Container(
    height: 200,
    child: Row(
      children: [
        Expanded(
          flex: 3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Meal',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              Container(
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
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Weight',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              Container(
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
            ],
          ),
        ),
        Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Blood Glucose Level ',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
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
                      _selectedMealUnits = value!;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      labelText: 'Select a meal unit',
                    ),
                  ),
                ),
              ],
            ))
      ],
    ),
  );
}
Container CustomFormField3(){
  return Container(
    height: 200,
    child: Row(
      children: [
        Expanded(
          flex: 3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Meal',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              Container(
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
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Weight',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              Container(
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
            ],
          ),
        ),
        Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Blood Glucose Level ',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
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
                      _selectedMealUnits = value!;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      labelText: 'Select a meal unit',
                    ),
                  ),
                ),
              ],
            ))
      ],
    ),
  );
}



