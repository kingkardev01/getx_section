import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_section/screens/switch_example_three/switchController.dart';


class SwitchHomeScreen extends StatelessWidget {
   SwitchHomeScreen({Key? key}) : super(key: key);

  final SwitchController switchController = Get.put(SwitchController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SwitchHomeScreen"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
           Text("Notifactions"),
          Obx(() => Switch(value: switchController.switchValue.value, onChanged: (v){
            switchController.switchMeter(v);
          })),

        ],
      ),
    );
  }
}
