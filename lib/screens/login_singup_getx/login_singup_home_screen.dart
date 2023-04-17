import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login_singup_controller.dart';

class LoginSingUpHomeScreen extends StatelessWidget {
  LoginSingUpHomeScreen({Key? key}) : super(key: key);

  final LoginSingController loginSingController = Get.put(LoginSingController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LoginSingUpHomeScreen"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             TextFormField(
               controller: loginSingController.emailController.value,
              decoration: const InputDecoration(
                hintText: "Email",

              ),
             ),
            TextFormField(
              controller: loginSingController.passwordController.value,
              decoration: const InputDecoration(
                hintText: "Password",

              ),
            ),
            const SizedBox(height: 50,),
            Obx(() => InkWell(
              onTap: (){
                loginSingController.loginApi();
                print("button clicked");
              },
              child: loginSingController.loading.value ? const CircularProgressIndicator() : Container(
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
                height: 40,
                child: const Center(child: Text("Login"),),
              ),
            ))

          ],
        ),
      ),
    );
  }
}
