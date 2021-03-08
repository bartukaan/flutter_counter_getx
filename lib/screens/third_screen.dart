import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'first_screen.dart';


class Third extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Third Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: () => Get.offAll(First()),
              child: Text("Go To Home"),
            )
          ],
        ),
      ),
    );
  }
}