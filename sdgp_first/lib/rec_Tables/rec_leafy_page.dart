import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sdgp_first/food_rec_page.dart';

class RecLeafyPage extends StatefulWidget {
  const RecLeafyPage({Key? key}) : super(key: key);

  @override
  State<RecLeafyPage> createState() => _RecLeafyPageState();

}

class _RecLeafyPageState extends State<RecLeafyPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Leafy Greens'),
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
                  DataCell(Text('Spinach')),
                  DataCell(Text('Contains fiber, polyphenols, vitamin C, magnesium, and other nutrients to reduce risk of diabetes.')),

                ]),
                DataRow(cells: [
                  DataCell(Text('Cabbage')),
                  DataCell(Text('Cabbages high fiber content helps keep blood stable in diabetes.')),

                ]),
                DataRow(cells: [
                  DataCell(Text('Kale')),
                  DataCell(Text('Kale has the ability to induce satiety, but takes longer to digest, preventing spikes in blood sugar levels.')),

                ]),
                DataRow(cells: [
                  DataCell(Text('Moringa Leaf')),
                  DataCell(Text('vitamin C, riboflavin, vitamin B6, vitamin A, lutein and zeaxanthin, iron, manganese')),

                ]),
                DataRow(cells: [
                  DataCell(Text('Sweet Leaf')),
                  DataCell(Text('vitamin C, riboflavin, folate, vitamin A, lutein and zeaxanthin, magnesium')),

                ]),
                DataRow(cells: [
                  DataCell(Text('Sweet Potato Leaf')),
                  DataCell(Text('riboflavin, vitamin A, vitamin K')),

                ]),
                DataRow(cells: [
                  DataCell(Text('Broccoli')),
                  DataCell(Text('vitamin C, vitamin K')),

                ]),
              ],
            ),
            Positioned(
              top: 520, // Position from top of the screen
              left: 20, // Position from left of the screen
              child: Image.network(
                'https://qph.cf2.quoracdn.net/main-qimg-4525698923b0e12db2a44fbbdb6d946f-lq',
                height: 200, // Set the height of the image
                width: 200, // Set the width of the image
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

