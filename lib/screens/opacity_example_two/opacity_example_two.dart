import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'opacity_controller.dart';


class OpacityHomeScreen extends StatelessWidget {


  OpacityHomeScreen({Key? key}) : super(key: key);


  final OpacityController opacityController = Get.put(OpacityController());

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("OpacityHomeScreen"),),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Container(
              height: 200,
              width: 200,
              color: Colors.green.withOpacity(opacityController.opacity.value),

            )),
            Obx(() => Slider(value: opacityController.opacity.value,
                onChanged: (opacityValue){
                  opacityController.opacityMeter(opacityValue);
                  print(opacityValue);
                }
            ))
          ],
        ),
      ),

    );
  }
}
