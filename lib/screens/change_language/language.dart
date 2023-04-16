import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Language extends  Translations{
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    'en_US' :{
      'message' : "What is Your Name?",
      'name'  : "Raj"
    },
    'bn_Bn' :{
      'message' : "আপনার নাম কি?",
      'name'  : "রাজ",
    }
  };


}