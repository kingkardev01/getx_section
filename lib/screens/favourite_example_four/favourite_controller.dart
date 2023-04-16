import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavouriteController extends GetxController{

  RxList<String> myFuritList =["apple",'mango','banana','lichu'].obs;

  RxList favouriteFruitList= [].obs;


  addFavouriteItem(String value){
    favouriteFruitList.add(value);
    print(favouriteFruitList);
  }

  removeFavouriteItem(String value){
    favouriteFruitList.remove(value);

  }

}