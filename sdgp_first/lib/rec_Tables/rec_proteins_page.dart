import 'package:flutter/material.dart';
import 'package:sdgp_first/food_rec_page.dart';


class proteins extends StatefulWidget {
  const proteins({Key? key}) : super(key: key);

  @override
  State<proteins> createState() => _proteinssState();
}

class _proteinssState extends State<proteins> {
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Proteins'),
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
                  DataCell(Text('Plant-based proteins')),
                  DataCell(Text('Beans, beans, lentils, peas, edamame, soy nuts, and temper are all plant-based protein foods that provide quality protein, healthy fats and fiber.')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Fish and seafood')),
                  DataCell(Text('Fish high in omega-3 fatty acids, shellfish including clams, crabs, scallops, shrimp and oysters.')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Poultry')),
                  DataCell(Text('Poultry without skin has lower saturated fat and cholesterol.')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Cheese and eggs')),
                  DataCell(Text('Reduced-fat cheese, cottage cheese, eggs, and whole eggs.')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Beef, pork, veal and lamb')),
                  DataCell(Text('Limit red meat and processed meats, choosing leanest options such as chuck, rib, rump roast, round, sirloin, cubed, flank, porterhouse, T-bone steak or tenderloin.')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Butter')),
                  DataCell(Text('The key is to include butter in a diet with 5% of calories from carbohydrates, 20% from protein, and 75% from fat.')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Milk')),
                  DataCell(Text('Milk provides important nutrients for people with diabetes, such as calcium, which can help prevent osteoporosis.')),
                ]),
              ],
            ),
            Positioned(
              top: 520, // Position from top of the screen
              left: 20, // Position from left of the screen
              child: Image.network(
                'https://c.ndtvimg.com/2019-04/s42bereg_proteins_625x300_18_April_19.jpg?im=Resize=(1230,900)',
                height: 150, // Set the height of the image
                width: 150, // Set the width of the image
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




