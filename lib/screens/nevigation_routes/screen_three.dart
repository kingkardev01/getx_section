import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ScreenThree extends StatelessWidget {
  var name;
   ScreenThree({Key? key,this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Screen Three"),),
      body: Center(child: TextButton(
        onPressed: (){
          Get.toNamed('/');
          // Get.back();
          // Get.back();
        },
        child: Text("Screen Three " + Get.arguments[1]),
      )),
    );
  }
}