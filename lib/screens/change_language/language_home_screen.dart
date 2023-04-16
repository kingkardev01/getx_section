import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageHomeScreen extends StatelessWidget {
  const LanguageHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LanguageHomeScreen"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("message".tr),
          Text("name".tr),
          Row(
            children: [
              TextButton(onPressed: (){
                Get.updateLocale(Locale('en' ,'US'));
              }, child: Text("English"),),
              TextButton(onPressed: (){
                Get.updateLocale(Locale('bn' ,'Bn'));
              }, child: Text("Bangla"),),
            ],
          )
        ],
      ),
    );
  }
}
