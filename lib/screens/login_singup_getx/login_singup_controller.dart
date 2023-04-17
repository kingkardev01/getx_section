import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';



import 'package:get/get.dart';

class LoginSingController extends GetxController{

  final emailController = TextEditingController().obs;
  final passwordController =TextEditingController().obs;

  RxBool loading = false.obs;

  void loginApi()async{
    loading.value = true;

    try{

      final response = await http.post(Uri.parse("https://reqres.in/api/login"),
          body: {
            "email" : emailController.value.text,
            "password": passwordController.value.text,
          }
      );

      var data = jsonDecode(response.body);
      
      print(response.statusCode);
      print(data);


      if(response.statusCode == 200){
        loading.value = false;
        print(loading.value);
        Get.snackbar("LogIn SucessFully", 'congratulations');
      }else{
        loading.value = false;
        print(loading.value);
        Get.snackbar("LogIn Faild", data['error']);
      }

    }catch(e){
      loading.value = false;
      print(loading.value);
      Get.snackbar("Expection", e.toString());
    }
  }



}