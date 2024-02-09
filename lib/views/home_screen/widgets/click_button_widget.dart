import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tap_timer_challenge/view_model/circular_timer_controller.dart';

class ClickButtonWidget extends GetView<TimerController> {
  const ClickButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Get.put(TimerController());
    return SizedBox(
      height: 50,
      width: 100,
      child: ElevatedButton(
        onPressed: () {
          controller.getRandomNumber();
          controller.checkTiming();
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            const Color(0xff0285FC),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ),
        child: const Text(
          'Click',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
