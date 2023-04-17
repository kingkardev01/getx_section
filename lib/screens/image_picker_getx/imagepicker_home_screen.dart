import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'imagepicker_controller.dart';

class ImagePickerHomeScreen extends StatelessWidget {
   ImagePickerHomeScreen({Key? key}) : super(key: key);

  final ImageController imageController = Get.put(ImageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ImagePickerHomeScreen"),
      ),
      body: Center(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: imageController.imagePath.isNotEmpty ? FileImage(File(imageController.imagePath.toString())) : null,

            ),
            TextButton(onPressed: (){
              imageController.getImage();
            },
                child: Text("Pick Your Image")
            )
          ],
        ),
      ),
    );
  }
}
