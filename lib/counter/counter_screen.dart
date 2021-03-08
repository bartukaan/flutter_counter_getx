import 'file:///E:/Users/bpideci/Projects/Flutter/counter_with_get/lib/counter/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final  counterController = Get.put(CounterController());
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Example with GETX"),
      ),
      body: Center(
        child: Column(
          children: [
            Obx(
              () => Text("COUNTER ${counterController.counter}"),
            ),
            Obx(
                  () => Text("${counterController.isEven ? 'EVEN' : 'ODD'}"),
            ),
            IconButton(icon: Icon(Icons.plus_one), onPressed: ()=>counterController.increment()),
            IconButton(icon: Icon(Icons.exposure_minus_1), onPressed: ()=>counterController.decrement())
          ],
        ),
      ),
    );
  }
}
