import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeightInputWidget extends StatefulWidget {
  final void Function(int feet, int inches) onHeightChanged;

  const HeightInputWidget({Key? key, required this.onHeightChanged})
      : super(key: key);

  @override
  _HeightInputWidgetState createState() => _HeightInputWidgetState();
}

class _HeightInputWidgetState extends State<HeightInputWidget> {
  int _feet = 0;
  int _inches = 0;

  void _onFeetChanged(String value) {
    setState(() {
      _feet = int.tryParse(value) ?? 0;
    });
    widget.onHeightChanged(_feet, _inches);
  }

  void _onInchesChanged(String value) {
    setState(() {
      _inches = int.tryParse(value) ?? 0;
    });
    widget.onHeightChanged(_feet, _inches);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Text('Feet'),
            SizedBox(height: 10),
            Container(
              width: 100,
              child: TextField(
                keyboardType: TextInputType.number,
                onChanged: _onFeetChanged,
              ),
            ),
          ],
        ),
        SizedBox(width: 30),
        Column(
          children: [
            Text('Inches'),
            SizedBox(height: 10),
            Container(
              width: 100,
              child: TextField(
                keyboardType: TextInputType.number,
                onChanged: _onInchesChanged,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
