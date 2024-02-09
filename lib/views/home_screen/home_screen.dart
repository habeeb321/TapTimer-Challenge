import 'package:flutter/material.dart';
import 'package:tap_timer_challenge/views/home_screen/widgets/random_and_seconds_widget.dart';

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
          children: [
            RandomAndSecondsWidget(),
          ],
        ),
      ),
    );
  }
}
