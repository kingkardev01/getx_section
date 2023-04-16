import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_section/screens/nevigation_routes/screen_three.dart';

class ScreenTwo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Screen Two"),),
      body: Center(child: TextButton(
        onPressed: (){
          // Get.to(ScreenThree());
          Get.toNamed('/screenThree',arguments: [
            'king',
            'redoi'
          ]);
        },
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Screen Two"),
              Text("Name is "),
            ],
          ),
        )
      )),
    );
  }
}