import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sdgp_first/food_rec_page.dart';

class RecSpicesPage extends StatefulWidget {
  const RecSpicesPage({Key? key}) : super(key: key);

  @override
  State<RecSpicesPage> createState() => _RecSpicesPageState();
}

class _RecSpicesPageState extends State<RecSpicesPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Spices & Herbs'),
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
                  DataCell(Text('Cinnamon')),
                  DataCell(Text('Reduce blood sugar, insulin resistance, and hemoglobin A1c, and may aid weight loss by lowering cholesterol and speeding up metabolism.')),

                ]),
                DataRow(cells: [
                  DataCell(Text('Turmeric')),
                  DataCell(Text('Anti-inflammatory, anti-aging, antioxidant, neuroprotective, anti-atherosclerotic, heart-protecting, weight-reducing, and anti-infectious properties.')),

                ]),
                DataRow(cells: [
                  DataCell(Text('Fenugreek')),
                  DataCell(Text('thiamine, riboflavin, vitamin B6, iron, magnesium, phosphorus, potassium, copper, manganese')),

                ]),
                DataRow(cells: [
                  DataCell(Text('Ginger')),
                  DataCell(Text('potassium')),

                ]),
                DataRow(cells: [
                  DataCell(Text('Garlic')),
                  DataCell(Text('vitamin C, vitamin B6, manganese, selenium')),

                ]),
                DataRow(cells: [
                  DataCell(Text('Tamarind')),
                  DataCell(Text('thiamine, magnesium')),

                ]),
                DataRow(cells: [
                  DataCell(Text('Rosemary')),
                  DataCell(Text('Effective heart tonic and antioxidant, and can be used in cooking and tea.')),

                ]),
                DataRow(cells: [
                  DataCell(Text('Bilberry')),
                  DataCell(Text('Their blue color and anthocyanins, which reduce inflammation and improve glucose tolerance.')),

                ]),
                DataRow(cells: [
                  DataCell(Text('Cumin')),
                  DataCell(Text('Cumin lowers blood sugar and cholesterol, and has a beneficial effect on advanced gly cation end products ')),

                ]),
              ],
            ),
            Positioned(
              top: 520, // Position from top of the screen
              left: 20, // Position from left of the screen
              child: Image.network(
                'https://cdn.shopify.com/s/files/1/1695/6563/articles/ever-wonder-what-to-do-with-your-extra-spices-and-herbs_2048x.jpg?v=1503383599',
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



