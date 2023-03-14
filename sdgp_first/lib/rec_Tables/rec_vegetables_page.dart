import 'package:flutter/material.dart';
import 'package:sdgp_first/food_rec_page.dart';
import 'package:sdgp_first/rec_Tables/rec_fruits_page.dart';
import 'package:sdgp_first/rec_Tables/rec_leafy_page.dart';

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
            title: const Text('Flutter DataTable Example'),
          ),
          body: ListView(children: <Widget>[
            const Center(
                child: Text(
                  'People-Chart',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                )),
            DataTable(
              columns: const [
                DataColumn(label: Text(
                    'ID',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                )),
                DataColumn(label: Text(
                    'Name',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                )),
                DataColumn(label: Text(
                    'Profession',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                )),
              ],
              rows: const [
                DataRow(cells: [
                  DataCell(Text('1')),
                  DataCell(Text('Stephen')),
                  DataCell(Text('Actor')),
                ]),
                DataRow(cells: [
                  DataCell(Text('5')),
                  DataCell(Text('John')),
                  DataCell(Text('Student')),
                ]),
                DataRow(cells: [
                  DataCell(Text('10')),
                  DataCell(Text('Harry')),
                  DataCell(Text('Leader')),
                ]),
                DataRow(cells: [
                  DataCell(Text('15')),
                  DataCell(Text('Peter')),
                  DataCell(Text('Scientist')),
                ]),
              ],
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




