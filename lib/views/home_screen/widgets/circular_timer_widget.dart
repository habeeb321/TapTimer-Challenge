import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tap_timer_challenge/view_model/circular_timer_controller.dart';

class CircularTimerWidget extends GetView<CircularTimerController> {
  const CircularTimerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CircularTimerController());
    return Obx(
      () => Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            height: 100,
            width: 100,
            child: CircularProgressIndicator(
              backgroundColor: const Color(0xff818181),
              value: (controller.seconds.value / 60),
              valueColor:
                  const AlwaysStoppedAnimation<Color>(Color(0xFF41B984)),
              strokeWidth: 8,
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
