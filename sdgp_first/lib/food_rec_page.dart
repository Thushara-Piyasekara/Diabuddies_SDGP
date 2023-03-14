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
      body: Center(
          child: Stack(
            children: <Widget>[
              Container(
                child: Column(
                  children: [
                    const Text(
                    'Recommended Foods', style: TextStyle(fontSize: 25),
                     ),
                    Positioned(
                    top: 100, // Position from top of the screen
                    left: 20, // Position from left of the screen
                     child: Image.network(
                      'https://picsum.photos/250?image=9',
                      height: 200, // Set the height of the image
                      width: 150, // Set the width of the image
                      ),
                    ),

                    Positioned(
                      top: 100,
                      left: 320,
                      child: Image.network(
                        '',
                        height: 200,
                        width: 150,
                      ),
                    ),

                    Positioned(
                      top: 500,
                      right: 20,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('See All'),
                      ),
                    ),
                  ]
              )
              )
              // Add other widgets as needed
            ],
          ),
        ),
    );

  }
}
