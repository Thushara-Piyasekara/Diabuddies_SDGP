import 'package:flutter/material.dart';

class AgeButtonWidget extends StatefulWidget {
  final int initialAge;
  final ValueChanged<int> onAgeChanged;

  AgeButtonWidget({required this.initialAge, required this.onAgeChanged});

  @override
  _AgeButtonWidgetState createState() => _AgeButtonWidgetState();
}

class _AgeButtonWidgetState extends State<AgeButtonWidget> {
  int _age = 0;

  @override
  void initState() {
    super.initState();
    _age = widget.initialAge;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: Icon(Icons.remove),
          onPressed: () {
            setState(() {
              _age = _age > 0 ? _age - 1 : 0;
              widget.onAgeChanged(_age);
            });
          },
        ),
        SizedBox(width: 16),
        Text(
          '$_age',
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(width: 16),
        IconButton(
          icon: Icon(Icons.add),
          onPressed: () {
            setState(() {
              _age = _age + 1;
              widget.onAgeChanged(_age);
            });
          },
        ),
      ],
    );
  }
}
