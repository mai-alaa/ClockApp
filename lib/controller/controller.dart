import 'dart:async';
import 'package:get/get.dart';

class Controller extends GetxController {
  Rx<DateTime> dateTime = DateTime.now().obs;
  RxBool status = false.obs;

  @override
  void onInit() {
    super.onInit();
    Timer.periodic(Duration(seconds: 1), (timer) {
      dateTime.value = DateTime.now();
    });
  }
}
