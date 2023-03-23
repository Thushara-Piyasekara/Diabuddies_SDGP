
import 'package:flutter/material.dart';

class CusMealPage extends StatefulWidget {
  const CusMealPage({Key? key}) : super(key: key);

  @override
  State<CusMealPage> createState() => _CusMealPageState();
}

class _CusMealPageState extends State<CusMealPage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}



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
TextEditingController weight8 = TextEditingController();
late String weight_8;
TextEditingController gluLvl = TextEditingController();
late String glucose;

final GlobalKey<FormState> formKey = GlobalKey<FormState>();

List<String> _mealUnits = ['g', 'ml'];
String _selectedMealUnits = 'g';

Container customFormField1(BuildContext context){
  return Container(
    height: 200,
    child: Row(
      children: [
        Expanded(
          flex: 3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Meal',
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
              const Text('Weight',
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
                const Text('Unit ',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                      //labelText: 'Select a meal unit',
                    ),
                  ),
                ),
                /*SizedBox(
                  //g
                  height: 100,
                  width: 300,
                  child: ElevatedButton.icon(
                    onPressed: () {

                      Navigator.pop(context, MaterialPageRoute(builder: (builder)=>const FirstMealPage()));
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      foregroundColor: MaterialStateProperty.all(Colors.lightBlue),
                    ),
                    icon: const IconTheme(
                      data: IconThemeData(size: 60,color: Colors.lightBlue),
                      child: Icon(Icons.fastfood_rounded),

                    ), // Use a network image instead of a local asset
                    label: const Text(
                      'Back',
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                ),*/
              ],
            ))
      ],
    ),
  );
}
Container customFormField2(){
  return Container(
    height: 200,
    child: Row(
      children: [
        Expanded(
          flex: 3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Meal',
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
              const Text('Weight',
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
                const Text('Unit ',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                      //labelText: 'Select a meal unit',
                    ),
                  ),
                ),
              ],
            ))
      ],
    ),
  );
}
Container customFormField3(){
  return Container(
    height: 200,
    child: Row(
      children: [
        Expanded(
          flex: 3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Meal',
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
              const Text('Weight',
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
                const Text('Unit ',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                      //labelText: 'Select a meal unit',
                    ),
                  ),
                ),
              ],
            ))
      ],
    ),
  );
}
Container customFormField4(){
  return Container(
    height: 200,
    child: Row(
      children: [
        Expanded(
          flex: 3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Meal',
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
              const Text('Weight',
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
                const Text('Unit',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                      //labelText: 'Select a meal unit',
                    ),
                  ),
                ),
              ],
            ))
      ],
    ),
  );
}
Container customFormField5(){
  return Container(
    height: 200,
    child: Row(
      children: [
        Expanded(
          flex: 3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Meal',
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
              const Text('Weight',
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
                const Text('Unit ',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                      //labelText: 'Select a meal unit',
                    ),
                  ),
                ),
              ],
            ))
      ],
    ),
  );
}
Container customFormField6(){
  return Container(
    height: 200,
    child: Row(
      children: [
        Expanded(
          flex: 3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Meal',
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
              const Text('Weight',
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
                const Text('Unit ',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                      //labelText: 'Select a meal unit',
                    ),
                  ),
                ),
              ],
            ))
      ],
    ),
  );
}
Container customFormField7(){
  return Container(
    height: 200,
    child: Row(
      children: [
        Expanded(
          flex: 3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Meal',
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
              const Text('Weight',
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
                const Text('Unit',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                      //labelText: 'Select a meal unit',
                    ),
                  ),
                ),
              ],
            ))
      ],
    ),
  );
}
Container customFormField8(){
  return Container(
    height: 200,
    child: Row(
      children: [
        Expanded(
          flex: 3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Meal',
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
              const Text('Weight',
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
                const Text('Unit',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                      //labelText: 'Select a meal unit',
                    ),
                  ),
                ),
              ],
            ))
      ],
    ),
  );
}







