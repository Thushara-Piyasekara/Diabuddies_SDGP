import 'package:flutter/material.dart';



class AgeInputWidget extends StatefulWidget {
  final void Function(int age, int weight) onAgeChanged;

  const AgeInputWidget({Key? key, required this.onAgeChanged})
      : super(key: key);

  @override
  _AgeInputWidgetState createState() => _AgeInputWidgetState();


}


class _AgeInputWidgetState extends State<AgeInputWidget> {
  int _age = 0;
  int _weight = 0;



  void _onAgeChanged(String value) {
    setState(() {
      _age = int.tryParse(value) ?? 0;
    });
    widget.onAgeChanged(_age,_weight);
  }

  void _onWeightChanged(String value) {
    setState(() {
      _weight = int.tryParse(value) ?? 0;
    });
    widget.onAgeChanged(_age, _weight);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [

            Text('Age'),
            SizedBox(height: 10),
            Container(
              width: 100,
              child: TextField(
                keyboardType: TextInputType.number,
                onChanged: _onAgeChanged,
              ),
            ),
          ],
        ),
        SizedBox(width: 30),
        Column(
          children: [
            Text('Weight(KG)'),
            SizedBox(height: 10),
            Container(
              width: 100,
              child: TextField(
                keyboardType: TextInputType.number,
                onChanged: _onWeightChanged,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
