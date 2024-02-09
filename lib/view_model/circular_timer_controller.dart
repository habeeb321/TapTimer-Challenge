import 'dart:async';

import 'package:get/get.dart';

class CircularTimerController extends GetxController {
  var seconds = 0.obs;
  var formattedSeconds = ''.obs;
  var displayText = ''.obs;

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
}
