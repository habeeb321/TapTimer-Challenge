import 'dart:async';
import 'dart:math';

import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:get/get.dart';

class TimerController extends GetxController {
  RxInt timeoutAttempts = 0.obs;
  RxInt attempts = 0.obs;
  RxInt correctAttempts = 0.obs;
  RxInt seconds = 0.obs;
  RxInt randomNumber = 0.obs;
  RxString formattedSeconds = ''.obs;
  RxString displayText = ''.obs;
  final isSuccess = false.obs;
  final buttonClicked = false.obs;
  CountDownController? animeController;

  @override
  void onInit() {
    super.onInit();
    ever(seconds, (_) {
      formattedSeconds.value = (seconds.value % 60).toString().padLeft(2, '0');
    });

    Timer.periodic(const Duration(seconds: 1), (timer) {
      seconds.value = DateTime.now().second;
    });
    animeController = CountDownController();
  }

  getRandomNumber() {
    randomNumber.value = Random().nextInt(60);
  }

  checkTiming() {
    attempts.value++;
    if (seconds.value == randomNumber.value) {
      correctAttempts.value++;
      isSuccess.value = true;
    } else {
      isSuccess.value = false;
    }
  }
}
