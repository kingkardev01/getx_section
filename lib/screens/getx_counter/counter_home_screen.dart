import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'counter_controller.dart';

class CounterHomeScreen extends StatelessWidget {
  const CounterHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("rebuild");

    final CounterController controller = Get.put(CounterController());


    return Scaffold(
      appBar: AppBar(title: Text("CounterHomeScreen"),),
      body: Center(
        child: Obx(()=> Text(controller.counter.toString() ),)
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){

          controller.increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
