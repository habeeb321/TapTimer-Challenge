import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tap_timer_challenge/view_model/circular_timer_controller.dart';

class CircularTimerWidget extends GetView<TimerController> {
  const CircularTimerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(TimerController());
    return Obx(
      () => Stack(
        alignment: Alignment.center,
        children: [
          Center(
            child: CircularCountDownTimer(
              duration: 5,
              controller: controller.animeController,
              width: 150,
              height: 150,
              fillColor: const Color(0xff818181),
              strokeWidth: 8.0,
              textStyle: const TextStyle(fontSize: 40.0, color: Colors.black),
              isReverse: true,
              isReverseAnimation: false,
              ringColor: Colors.green,
              onComplete: () {
                controller.buttonClicked.value = false;
                controller.timeoutAttempts.value++;
                controller.animeController?.restart(duration: 5);
              },
            ),
          ),
          Text(
            controller.displayText.value,
            style: const TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
