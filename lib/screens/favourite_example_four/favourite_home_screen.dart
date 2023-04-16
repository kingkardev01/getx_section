import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'favourite_controller.dart';

class FavouriteHomeScreen extends StatelessWidget {
   FavouriteHomeScreen({Key? key}) : super(key: key);


  final FavouriteController favouriteController =Get.put(FavouriteController());



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("FavouriteHomeScreen"),
      ),
      body: ListView.builder(itemBuilder: (context,index){
        return Card(
          child: ListTile(
            onTap: (){
              if(favouriteController.favouriteFruitList.contains(favouriteController.myFuritList[index].toString())){
                favouriteController.removeFavouriteItem(favouriteController.myFuritList[index].toString());

              }else{
                favouriteController.addFavouriteItem(favouriteController.myFuritList[index].toString());
              }
            },
            title: Text(favouriteController.myFuritList[index]),
            trailing: Obx(()=>Icon(Icons.favorite, color: favouriteController.favouriteFruitList.contains(favouriteController.myFuritList[index].toString()) ? Colors.red : Colors.white))
          ),
        );
      },
        itemCount: favouriteController.myFuritList.length,
      )
    );
  }
}
