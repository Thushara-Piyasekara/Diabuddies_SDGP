import 'package:flutter/material.dart';
import 'package:sdgp_first/food_rec_page.dart';


class RecFruitPage extends StatefulWidget {
  const RecFruitPage({Key? key}) : super(key: key);

  @override
  State<RecFruitPage> createState() => _RecFruitPageState();
}

class _RecFruitPageState extends State<RecFruitPage> {
  @override
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Fruits'),
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
                  DataCell(Text('Blueberries')),
                  DataCell(Text('vitamin K')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Pomegranate')),
                  DataCell(Text('	vitamin K')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Green Kiwi')),
                  DataCell(Text('vitamin C, vitamin K')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Passion Fruit')),
                  DataCell(Text('vitamin C, vitamin A')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Surinam Cherry')),
                  DataCell(Text('vitamin C, vitamin A')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Durian')),
                  DataCell(Text('vitamin C, thiamine')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Guava')),
                  DataCell(Text('vitamin C, thiamine')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Grape')),
                  DataCell(Text('Copper')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Florida Avocado')),
                  DataCell(Text('vitamin C')),
                ]),
              ],
            ),
            Positioned(
              top: 520, // Position from top of the screen
              left: 20, // Position from left of the screen
              child: Image.network(
                'https://studyfinds.org/wp-content/uploads/2021/06/pexels-jane-d-1132047.jpg',
                height: 100, // Set the height of the image
                width: 100, // Set the width of the image
              ),
            ),
            Positioned(
              top: 620,
              right: 20,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, MaterialPageRoute(builder: (builder)=>const FoodRecPage()));
                },
                child: const Text('Back'),
              ),
            ),
          ])
      ),
    );
  }
}


