import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_section/screens/nevigation_routes/screen_two.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Screen One"),),
      body: Center(child: TextButton(
        onPressed: (){
          Get.toNamed("/secondTwo");
        },
          child: Text("Screen One"),
      )),
    );
  }
}
