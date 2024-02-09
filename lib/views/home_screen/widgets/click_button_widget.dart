import 'package:flutter/material.dart';

class ClickButtonWidget extends StatelessWidget {
  const ClickButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 100,
      child: ElevatedButton(
        onPressed: () {},
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
