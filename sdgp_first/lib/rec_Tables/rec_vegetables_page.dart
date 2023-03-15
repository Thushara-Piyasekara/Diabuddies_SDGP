import 'package:flutter/material.dart';
import 'package:sdgp_first/food_rec_page.dart';

class vegetables extends StatefulWidget {
  const vegetables({Key? key}) : super(key: key);

  @override
  State<vegetables> createState() => _vegetablesState();
}

class _vegetablesState extends State<vegetables> {
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Vegetables'),
          ),
          body: ListView(children: <Widget>[
            const Center(
                child: Text(
                  'You Must Include In Your Diabetes Diet',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                )),
            DataTable(
              columns: const [
                DataColumn(label: Text(
                    'Name',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                )),
                DataColumn(label: Text(
                    'Nutrients',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                )),
              ],
              rows: const [
                DataRow(cells: [
                  DataCell(Text('Asparagus')),
                  DataCell(Text('vitamin K')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Celery')),
                  DataCell(Text('	vitamin K')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Leek')),
                  DataCell(Text('vitamin C, vitamin A, vitamin K, manganese')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Cantaloupe')),
                  DataCell(Text('vitamin C, vitamin A')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Yam')),
                  DataCell(Text('vitamin C, potassium, manganese')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Bitter Melon')),
                  DataCell(Text('vitamin C, lutein and zeaxanthin')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Paw Paw')),
                  DataCell(Text('vitamin C, iron, magnesium, copper, manganese')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Green Tomato')),
                  DataCell(Text('vitamin C')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Endive')),
                  DataCell(Text('folate, vitamin A, vitamin K, manganese')),
                ]),
              ],
            ),
            Positioned(
              top: 520, // Position from top of the screen
              left: 20, // Position from left of the screen
              child: Image.network(
                'https://belvoir-university-health.s3.amazonaws.com/media/2018/02/07180456/diabetes-diet-vegetables-e1470979090921.jpg',
                height: 100, // Set the height of the image
                width: 100, // Set the width of the image
              ),
            ),
            Positioned(
              top: 620,
              right: 20,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (builder)=>const FoodRecPage()));
                },
                child: const Text('Back'),
              ),
            ),
          ])
      ),
    );
  }
}




