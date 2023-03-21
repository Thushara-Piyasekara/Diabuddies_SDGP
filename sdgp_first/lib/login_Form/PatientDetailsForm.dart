import 'package:flutter/material.dart';

class PatientDetailsForm extends StatefulWidget {
  const PatientDetailsForm({Key? key}) : super(key: key);

  @override
  _PatientDetailsFormState createState() => _PatientDetailsFormState();
}

class _PatientDetailsFormState extends State<PatientDetailsForm> {
  int _age = 18;
  double _height = 160.0;
  double _weight = 60.0;
  String _gender = '';
  String _diabetesType = '';
  String _activityLevel = '';

  void _setGender(String gender) {
    setState(() {
      _gender = gender;
    });
  }

  void _setDiabetesType(String diabetesType) {
    setState(() {
      _diabetesType = diabetesType;
    });
  }

  void _setActivityLevel(String activityLevel) {
    setState(() {
      _activityLevel = activityLevel;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Patient Details Form'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20),
            Text(
              'Select Gender',
              style: TextStyle(fontSize: 18),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () => _setGender('Male'),
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: _gender == 'Male' ? Colors.blue : Colors.grey,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Icon(Icons.person, size: 50, color: Colors.white),
                  ),
                ),
                InkWell(
                  onTap: () => _setGender('Female'),
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: _gender == 'Female' ? Colors.pink : Colors.grey,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Icon(Icons.person, size: 50, color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Select Diabetes Type',
              style: TextStyle(fontSize: 18),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Radio(
                      value: 'Type 1',
                      groupValue: _diabetesType,
                      onChanged: (value) => _setDiabetesType(value as String),
                    ),
                    Text('Type 1 Diabetic'),
                  ],
                ),
                Row(
                  children: [
                    Radio(
                      value: 'Type 2',
                      groupValue: _diabetesType,
                      onChanged: (value) => _setDiabetesType(value as String),
                    ),
                    Text('Type 2 Diabetic'),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Select Height',
              style: TextStyle(fontSize: 18),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text('${_height.toStringAsFixed(0)} cm'),
                  Slider(
                    value: _height,
                    min: 120.0,
                    max: 220.0,
                    onChanged: (value) {
                      setState(() {
                        _height = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Select Age',
              style: TextStyle(fontSize: 18),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      _age--;
                    });
                  },
                  child: Icon(Icons.remove),
                  mini: true,
                ),
                SizedBox(width: 20),
                Text(
                  '$_age',
                  style: TextStyle(fontSize: 40),
                ),
                SizedBox(width: 20),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      _age++;
                    });
                  },
                  child: Icon(Icons.add),
                  mini: true,
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Select Weight',
              style: TextStyle(fontSize: 18),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      _weight--;
                    });
                  },
                  child: Icon(Icons.remove),
                  mini: true,
                ),
                SizedBox(width: 20),
                Text(
                  '${_weight.toStringAsFixed(1)} kg',
                  style: TextStyle(fontSize: 40),
                ),
                SizedBox(width: 20),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      _weight++;
                    });
                  },
                  child: Icon(Icons.add),
                  mini: true,
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Select Activity Level',
              style: TextStyle(fontSize: 18),
            ),
            Column(
              children: [
                RadioListTile(
                  title: Text('Low Activity Level'),
                  value: 'Low',
                  groupValue: _activityLevel,
                  onChanged: (value) => _setActivityLevel(value as String),
                ),
                RadioListTile(
                  title: Text('Moderate Activity Level'),
                  value: 'Moderate',
                  groupValue: _activityLevel,
                  onChanged: (value) => _setActivityLevel(value as String),
                ),
                RadioListTile(
                  title: Text('High Activity Level'),
                  value: 'High',
                  groupValue: _activityLevel,
                  onChanged: (value) => _setActivityLevel(value as String),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
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
            label: 'Reports',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
      ),
    );
  }
}
