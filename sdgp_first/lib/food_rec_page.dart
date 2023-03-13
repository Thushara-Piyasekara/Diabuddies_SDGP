import 'package:flutter/material.dart';

class FoodRecPage extends StatefulWidget {
  const FoodRecPage({Key? key}) : super(key: key);

  @override
  State<FoodRecPage> createState() => _FoodRecPageState();
}

class _FoodRecPageState extends State<FoodRecPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meal Information'),
      ),
      body: const Center(
        child: Text('Recommended Foods'),
      ),
    );


    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Image Demo'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Image.asset('assets/tablet.png'),
              const Text(
                'A tablet is a wireless touch screen computer that is smaller than a notebook but larger than a smartphone.',
                style: TextStyle(fontSize: 20.0),
              )
            ],
          ),
        ),
      ),
    );
  }
}
