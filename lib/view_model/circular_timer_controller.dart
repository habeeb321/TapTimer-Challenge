import 'dart:async';
import 'dart:math';

import 'package:get/get.dart';

class TimerController extends GetxController {
  RxInt seconds = 0.obs;
  RxInt randomNumber = 0.obs;
  RxString formattedSeconds = ''.obs;
  RxString displayText = ''.obs;

  @override
  void onInit() {
    super.onInit();
    ever(seconds, (_) {
      formattedSeconds.value = (seconds.value % 60).toString().padLeft(2, '0');
      displayText.value = '0:${formattedSeconds.value}';
    });

    Timer.periodic(const Duration(seconds: 1), (timer) {
      seconds.value = DateTime.now().second;
    });
  }

  getRandomNumber() {
    randomNumber.value = Random().nextInt(60);
  }
}
