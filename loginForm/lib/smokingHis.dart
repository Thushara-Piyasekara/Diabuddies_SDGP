import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SmokeInputWidget extends StatefulWidget {
  final void Function(int smoke) onSmokeChanged;

  const SmokeInputWidget({Key? key, required this.onSmokeChanged})
      : super(key: key);

  @override
  _SmokeInputWidgetState createState() => _SmokeInputWidgetState();
}


class _SmokeInputWidgetState extends State<SmokeInputWidget> {
  int _smoke = 0;

  void _onAgeChanged(String value) {
    setState(() {
      _smoke = int.tryParse(value) ?? 0;
    });
    widget.onSmokeChanged(_smoke);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Text('Smoking History'),
            SizedBox(height: 10),
            Container(
              width: 100,
              child: TextField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                widget.onSmokeChanged(int.tryParse(value) ?? 0);
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
