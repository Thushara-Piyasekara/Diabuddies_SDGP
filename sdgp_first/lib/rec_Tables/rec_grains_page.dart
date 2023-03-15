import 'package:flutter/material.dart';
import 'package:sdgp_first/food_rec_page.dart';

class grains extends StatefulWidget {
  const grains({Key? key}) : super(key: key);

  @override
  State<grains> createState() => _grainssState();
}

class _grainssState extends State<grains> {
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Nuts,Grains & Beans'),
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
                  DataCell(Text('Green Pea')),
                  DataCell(Text('vitamin C, vitamin K, manganese')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Black Walnut')),
                  DataCell(Text('vitamin B6, magnesium, phosphorus, zinc, copper, manganese, selenium')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Cashew Nut')),
                  DataCell(Text('thiamine, vitamin B6, vitamin K, iron, magnesium, phosphorous, zinc, copper, manganese, selenium')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Pistachio')),
                  DataCell(Text('thiamine, vitamin B6, iron, magnesium, phosphorous, potassium, copper, manganese')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Hemp Seed')),
                  DataCell(Text('thiamine, niacin, vitamin B6, iron, magnesium, phosphorus, potassium, zinc, copper, manganese')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Peanut')),
                  DataCell(Text('thiamine, niacin, folate, vitamin E, iron, magnesium, phosphorous, potassium, zinc, copper, manganese')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Almond')),
                  DataCell(Text('riboflavin, vitamin E, calcium, iron, magnesium, phosphorous, potassium, zinc, copper, manganese')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Chia Seed')),
                  DataCell(Text('omega-3, thiamine, niacin, calcium, iron, magnesium, phosphorous, zinc, copper, manganese, selenium')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Pumpkin Seed')),
                  DataCell(Text('niacin, iron, magnesium, phosphorous, potassium, zinc, copper, manganese')),
                ]),
              ],
            ),
            Positioned(
              top: 520, // Position from top of the screen
              left: 20, // Position from left of the screen
              child: Image.network(
                'https://www.tastingtable.com/img/gallery/common-mistakes-everyone-makes-with-beans/intro-1656424788.jpg',
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




