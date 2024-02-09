import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tap_timer_challenge/view_model/circular_timer_controller.dart';

class SuccessOrFailureWidget extends GetView<TimerController> {
  const SuccessOrFailureWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(TimerController());
    return Obx(
      () => Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        height: 120,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: controller.isSuccess.value
              ? const Color(0xff33A64B)
              : const Color(0xffFFBC25),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                controller.isSuccess.value ? 'Success :)' : 'Sorry, try again!',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
            const Divider(thickness: 1),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                controller.isSuccess.value
                    ? 'Score : ${controller.correctAttempts} / ${controller.attempts}'
                    : 'Attempts: ${controller.attempts}',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
