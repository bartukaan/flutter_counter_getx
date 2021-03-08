import 'package:get/get.dart';

class CounterController extends GetxController{

  var counter = 0.obs;

  bool get isEven => counter.isEven;

  void increment(){
    counter++;
  }
  void decrement(){
    counter--;
  }

}