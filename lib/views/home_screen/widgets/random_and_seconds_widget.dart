import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RandomAndSecondsWidget extends StatelessWidget {
  const RandomAndSecondsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
          child: const Column(
            children: [
              SizedBox(height: 40),
              Text(
                "Current Second",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Divider(
                color: Color(0xff6F91C1),
                thickness: 1,
              ),
              Text("37"),
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
          child: const Column(
            children: [
              SizedBox(height: 40),
              Text(
                "Random Number",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Divider(
                color: Color(0xffAC8EB8),
                thickness: 1,
              ),
              Text("10"),
            ],
          ),
        ),
      ],
    );
  }
}
