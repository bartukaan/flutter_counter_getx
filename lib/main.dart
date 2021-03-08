import 'package:counter_with_get/screens/first_screen.dart';
import 'package:counter_with_get/screens/forth_screen.dart';
import 'package:counter_with_get/screens/second_screen.dart';
import 'package:counter_with_get/screens/third_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import 'counter/counter_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: First(),
      theme: ThemeData(
        accentColor: Colors.purpleAccent,
        primaryColor: Colors.purple,
      ),
      getPages: [
        GetPage(name: '/', page: () => First()),
        GetPage(name: '/second', page: () => Second()),
        GetPage(
          name: '/third',
          page: () => Third(),
          transition: Transition.zoom,
        ),
        GetPage(name: "/fourth", page: () => Fourth()),
      ],
    );
  }
}

