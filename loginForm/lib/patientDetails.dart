import 'package:flutter/material.dart';
import 'heightInput.dart';

class PatientDetailsForm extends StatefulWidget {
  @override
  _PatientDetailsFormState createState() => _PatientDetailsFormState();
}

class _PatientDetailsFormState extends State<PatientDetailsForm> {
  String _gender = 'male';
  String? _diabeticType;
  String? _activityLevel;
  int _feet = 0;
  int _inches = 0;
  int? _age;
  int? _weight;

  void _selectGender(String gender) {
    setState(() {
      _gender = gender;
    });
  }

  void _selectDiabeticType(String? diabeticType) {
    setState(() {
      _diabeticType = diabeticType;
    });
  }

  void _onHeightChanged(int feet, int inches) {
    setState(() {
      _feet = feet;
      _inches = inches;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Patient Details Form'),
        ),
        body: SingleChildScrollView(
            padding: EdgeInsets.all(16.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Center(
                child: Text(
                  'Gender',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () => _selectGender('male'),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: _gender == 'male'
                              ? Colors.blue.withOpacity(0.3)
                              : null,
                          child: Icon(Icons.male),
                        ),
                        SizedBox(height: 5),
                        Text('Male'),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _selectGender('female'),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: _gender == 'female'
                              ? Colors.blue.withOpacity(0.3)
                              : null,
                          child: Icon(Icons.female),
                        ),
                        SizedBox(height: 5),
                        Text('Female'),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),
              Center(
                child: Text(
                  'Diabetic Type',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: RadioListTile<String>(
                      title: Text('Type 1 Diabetic'),
                      value: 'type1',
                      groupValue: _diabeticType,
                      onChanged: _selectDiabeticType,
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: RadioListTile<String>(
                      title: Text('Type 2 Diabetic'),
                      value: 'type2',
                      groupValue: _diabeticType,
                      onChanged: _selectDiabeticType,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),
              Center(
                child: Text(
                  'Height',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ),
              SizedBox(height: 10),
              HeightInputWidget(onHeightChanged: _onHeightChanged),
                  SizedBox(height: 10),


              Container(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.transparent,
                      ),
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Age',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            keyboardType: TextInputType.number,
                            onChanged: (value) {
                              setState(() {
                                _age = int.tryParse(value);
                              });
                            },
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Weight (in kg)',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            keyboardType: TextInputType.number,
                            onChanged: (value) {
                              setState(() {
                                _weight = int.tryParse(value);
                              });
                            },
                          ),
                          SizedBox(height: 5,),
                        ],
                      ),
                    ),

                    Center(
                      child: Text(
                        'Activity Level',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    RadioListTile<String>(
                      title: Text('Low level of activity'),
                      value: 'low',
                      groupValue: _activityLevel,
                      onChanged: (value) {
                        setState(() {
                          _activityLevel = value;
                        });
                      },
                    ),
                    RadioListTile<String>(
                      title: Text('Moderate level of activity'),
                      value: 'moderate',
                      groupValue: _activityLevel,
                      onChanged: (value) {
                        setState(() {
                          _activityLevel = value;
                        });
                      },
                    ),
                    RadioListTile<String>(
                      title: Text('High level of activity'),
                      value: 'high',
                      groupValue: _activityLevel,
                      onChanged: (value) {
                        setState(() {
                          _activityLevel = value;
                        });
                      },
                    ),

                    ElevatedButton(
                      onPressed: () {
                        // process form data here
                        print('Gender: $_gender');
                        print('Diabetic Type: $_diabeticType');
                        print('Age: $_age');
                        print('Weight: $_weight');
                        print('ActivityLevel: $_activityLevel ');
                      },
                      child: Text('Submit'),
                    ),
                  ],
                ),
              ),
            ]
                )

        ),
        bottomNavigationBar:BottomNavigationBar(
          items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.lightBlue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Patient Info',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.schedule),
            label: 'Schedule',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt),
            label: 'Report',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
        ],
      ) ,

    );
  }
}
