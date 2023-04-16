import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeightWidthScreen extends StatelessWidget {
  const HeightWidthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HeightWidthScreen"),
      ),
      body: Container(
        color: Colors.green,
        // height: MediaQuery.of(context).size.height * 0.7,
        height: Get.height *0.7 ,
        width: Get.width * 0.8,

      ),
    );
  }
}
