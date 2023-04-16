import 'package:get/get.dart';

class SwitchController extends GetxController{
  RxBool switchValue = false.obs;

  switchMeter (bool value){
    switchValue.value = value;
    print(value);
  }

}