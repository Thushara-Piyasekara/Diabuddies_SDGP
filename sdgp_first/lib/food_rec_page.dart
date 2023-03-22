import 'package:flutter/material.dart';
import 'package:sdgp_first/rec_Tables/rec_fruits_page.dart';
import 'package:sdgp_first/rec_Tables/rec_leafy_page.dart';

import 'add_meal_page.dart';
import 'rec_Tables/rec_grains_page.dart';
import 'rec_Tables/rec_proteins_page.dart';
import 'rec_Tables/rec_spices_page.dart';
import 'rec_Tables/rec_vegetables_page.dart';

class FoodRecPage extends StatefulWidget {
  const FoodRecPage({Key? key}) : super(key: key);

  @override
  State<FoodRecPage> createState() => _FoodRecPageState();
}

class _FoodRecPageState extends State<FoodRecPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Recommended Foods',
          ),
        ),
        body: Center(
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 30, // Position from top of the screen
                left: 20, // Position from left of the screen
                child: Image.network(
                  'https://www.unlockfood.ca/EatRightOntario/media/Website-images-resized/dark-leafy-greens.jpg',
                  height: 200, // Set the height of the image
                  width: 150, // Set the width of the image
                ),
              ),

              Positioned(
                top: 50,
                left: 20,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (builder)=>const RecLeafyPage()));
                  },
                  child: const Text('Leafy'),
                ),
              ),

              Positioned(
                top: 30,
                right: 20,
                child: Image.network(
                  'https://nationaltoday.com/wp-content/uploads/2021/06/National-Herbs-and-Spices-Day-1.jpg',
                  height: 200,
                  width: 150,
                ),
              ),
              Positioned(
                top: 50,
                right: 20,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (builder)=>const RecSpicesPage()));
                  },
                  child: const Text('Spices'),
                ),
              ),
              Positioned(
                top: 220, // Position from top of the screen
                left: 20, // Position from left of the screen
                child: Image.network(
                  'https://www.allrecipes.com/thmb/GmTetaxdN7vrxEkdvyS1NHGJvjY=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/61129_Prep_Smoothies_030_preview-2000-912a7f152ea34494b9ddaa6238dce221.jpg',
                  height: 200, // Set the height of the image
                  width: 150, // Set the width of the image
                ),
              ),
              Positioned(
                top: 240,
                left: 20,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (builder)=>const RecFruitPage()));
                  },
                  child: const Text('Fruits'),
                ),
              ),
              Positioned(
                top: 220, // Position from top of the screen
                right: 20, // Position from left of the screen
                child: Image.network(
                  'https://www.portugalresident.com/wp-content/uploads/2014/04/110414_it_vegetables.jpg',
                  height: 200, // Set the height of the image
                  width: 150, // Set the width of the image
                ),
              ),
              Positioned(
                top: 240,
                right: 20,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (builder)=>const vegetables()));
                  },
                  child: const Text('Vegetables'),
                ),
              ),
              Positioned(
                top: 420, // Position from top of the screen
                left: 20, // Position from left of the screen
                child: Image.network(
                  'https://static.toiimg.com/thumb/79547188.cms?width=400&height=300&resizemode=4&imgsize=188326',
                  height: 200, // Set the height of the image
                  width: 150, // Set the width of the image
                ),
              ),
              Positioned(
                top: 440,
                left: 20,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (builder)=>const grains()));
                  },
                  child: const Text('Grains'),
                ),
              ),
              Positioned(
                top: 420, // Position from top of the screen
                right: 20, // Position from left of the screen
                child: Image.network(
                  'https://149777215.v2.pressablecdn.com/wp-content/uploads/2021/07/dsm-boosting-protein-intake-shutterstock-684710068.jpg',
                  height: 200, // Set the height of the image
                  width: 150, // Set the width of the image
                ),
              ),
              Positioned(
                top: 440,
                right: 20,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (builder)=>const proteins()));
                  },
                  child: const Text('Proteins'),
                ),
              ),





              Positioned(
                top: 620,
                right: 20,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context, MaterialPageRoute(builder: (builder)=>const FirstMealPage()));
                  },
                  child: const Text('Back'),
                ),
              ),


              // Add other widgets as needed
            ],
          ),
        ),
      ),
    );
  }
}