import 'package:flutter/material.dart';
import 'package:tap_timer_challenge/views/home_screen/widgets/circular_timer_widget.dart';
import 'package:tap_timer_challenge/views/home_screen/widgets/click_button_widget.dart';
import 'package:tap_timer_challenge/views/home_screen/widgets/random_and_seconds_widget.dart';
import 'package:tap_timer_challenge/views/home_screen/widgets/success_or_failure_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tap Timer Challenge',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RandomAndSecondsWidget(),
            SuccessOrFailureWidget(isSuccess: false),
            CircularTimerWidget(),
            ClickButtonWidget(),
          ],
        ),
      ),
    );
  }
}
