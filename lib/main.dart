import 'package:flutter/material.dart';
import 'package:getx_section/screens/change_language/language.dart';
import 'package:getx_section/screens/change_language/language_home_screen.dart';
import 'package:getx_section/screens/favourite_example_four/favourite_home_screen.dart';
import 'package:getx_section/screens/getx_counter/counter_home_screen.dart';
import 'package:getx_section/screens/height_width/height_width_screen.dart';
import 'package:getx_section/screens/home_page.dart';
import 'package:get/get.dart';
import 'package:getx_section/screens/nevigation_routes/screen_one.dart';
import 'package:getx_section/screens/nevigation_routes/screen_three.dart';
import 'package:getx_section/screens/nevigation_routes/screen_two.dart';
import 'package:getx_section/screens/opacity_example_two/opacity_example_two.dart';
import 'package:getx_section/screens/switch_example_three/switch_home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: Locale('en' ,'US'),
      fallbackLocale: Locale('en' ,'US'),
      translations: Language(),
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:  FavouriteHomeScreen(),
      // getPages: [
      //   GetPage(name: '/', page: ()=> ScreenOne()),
      //   GetPage(name: '/secondTwo', page: ()=> ScreenTwo()),
      //   GetPage(name: '/screenThree', page: ()=> ScreenThree()),
      //
      // ],
    );
  }
}

