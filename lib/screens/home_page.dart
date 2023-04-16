import 'package:flutter/material.dart';
import 'package:get/get.dart';


//part 2 Get Material App & GetUtils
// i want to show snakBar


class SnackBar1 extends StatelessWidget {
  const SnackBar1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("This is Is Get X Tutorial"),),
       body: Center(child: Text("Hello")),
      floatingActionButton: FloatingActionButton(

        // i want to show snakbar so i use (get.snakbar) of Getx package;
        onPressed: (){
          Get.snackbar("Kingkar", "This is My Code",
            snackPosition: SnackPosition.TOP,
            backgroundColor: Colors.green,
            colorText: Colors.white,
            showProgressIndicator : true,
            margin: EdgeInsets.all(15.0),


          );
        },
        child: Icon(Icons.add),

      ),
    );
  }
}

//part 2 Get Material App & GetUtils
// i want to show Dialog ,Bottom sheet and gark and light theme

class DiaAndBottomWithTheme extends StatelessWidget {
  const DiaAndBottomWithTheme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dialog and BottomSheet & Theme "),),
      body: Column(
        children: [
          InkWell(
            onTap: (){
              Get.defaultDialog(
                title: "This is Dialog",
                cancel: TextButton(
                    onPressed: (){
                      Get.back();
                    },
                    child: const Text("Cancel")
                ),
                confirm: TextButton(
                    onPressed: (){
                      Get.back();
                    },
                    child: const Text("Save")
                ),
              );
            },
            child: Card(
              color: Colors.green.withOpacity(0.7),
              elevation: 8,
              child: ListTile(
                title: Text("Dialog"),
                subtitle: Text("SubTitle"),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Get.bottomSheet(
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Card(
                    child: Container(
                      margin: EdgeInsets.all(15.0),
                        child: Text("This is buttomsheet",style: TextStyle(fontSize: 24,),)
                    ),
                  ),
                )
              );
            },
            child: Card(
              color: Colors.green.withOpacity(0.7),
              elevation: 8,
              child: ListTile(
                title: Text("Bottom"),
                subtitle: Text("SubTitle"),
              ),
            ),
          ),
            InkWell(
              onTap: (){
                Get.bottomSheet(
                  Container(

                    decoration: BoxDecoration(
                      color: Colors.limeAccent.withOpacity(0.8),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15.0),
                        topRight: Radius.circular(15.0),
                      )
                    ),
                    height: 300,
                    child: Column(
                      children: [
                        TextButton(onPressed: (){
                           Get.changeTheme(ThemeData.light());
                        }, child: Text("Light Theme")),
                        TextButton(onPressed: (){
                          Get.changeTheme(ThemeData.dark());
                        }, child: Text("Dark Theme"))
                      ],
                    )
                  )
                );
              },
            child: Card(
              color: Colors.green,
              child: Text("Change Your Theme"),
            ),
          )
        ],
      ),
    );
  }
}
