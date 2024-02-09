import 'package:flutter/material.dart';

class SuccessOrFailureWidget extends StatelessWidget {
  final bool isSuccess;

  const SuccessOrFailureWidget({
    Key? key,
    required this.isSuccess,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: 120,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: isSuccess ? const Color(0xff33A64B) : const Color(0xffFFBC25),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              isSuccess ? 'Success :)' : 'Sorry, try again!',
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
              isSuccess ? 'Score : 1 / 2' : 'Attempts: 1',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
