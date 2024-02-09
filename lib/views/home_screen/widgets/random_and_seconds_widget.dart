import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tap_timer_challenge/view_model/circular_timer_controller.dart';

class RandomAndSecondsWidget extends GetView<TimerController> {
  const RandomAndSecondsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Get.put(TimerController());
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          height: 110,
          width: Get.width * 0.4,
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xff6F91C1)),
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xffDAE8FC),
          ),
          child: Column(
            children: [
              const SizedBox(height: 40),
              const Text(
                "Current Second",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const Divider(
                color: Color(0xff6F91C1),
                thickness: 1,
              ),
              Obx(
                () => Text(
                  controller.seconds.value.toString(),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 110,
          width: Get.width * 0.4,
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xffAC8EB8)),
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xffE1D5E7),
          ),
          child: Column(
            children: [
              const SizedBox(height: 40),
              const Text(
                "Random Number",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const Divider(
                color: Color(0xffAC8EB8),
                thickness: 1,
              ),
              Obx(() => Text(controller.randomNumber.value.toString())),
            ],
          ),
        ),
      ],
    );
  }
}
