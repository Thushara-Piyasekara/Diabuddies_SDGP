import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class ImageChoosePage extends StatefulWidget {
  const ImageChoosePage({Key? key}) : super(key: key);

  @override
  State<ImageChoosePage> createState() => _ImageChoosePageState();
}

class _ImageChoosePageState extends State<ImageChoosePage> {
  File? image;

  Future chooseImage(ImageSource source) async{
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image != null) {
        final imageTemporarily = File(image.path);
        this.image = imageTemporarily;
      } else {
        return;
      }
    }on PlatformException catch (e){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("Failed to pick image")
      )
      );
    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 350,),
                SizedBox(
                  //g
                  height: 150,
                  width: 300,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      chooseImage(ImageSource.camera);
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      foregroundColor: MaterialStateProperty.all(Colors.green),
                    ),
                    icon: IconTheme(
                      data: IconThemeData(size: 60,color: Colors.green),
                      child: Icon(Icons.camera_alt_rounded),

                    ), // Use a network image instead of a local asset
                    label: const Text(
                      'Capture From Camera',
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                ),
                SizedBox(height: 40,),
                SizedBox(
                  //g
                  height: 150,
                  width: 300,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      chooseImage(ImageSource.gallery);
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      foregroundColor: MaterialStateProperty.all(Colors.green),
                    ),
                    icon: IconTheme(
                      data: IconThemeData(size: 60,color: Colors.green),
                      child: Icon(Icons.photo),

                    ), // Use a network image instead of a local asset
                    label: const Text(
                      'Select From Gallery',
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
