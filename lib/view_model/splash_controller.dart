import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';
import 'package:get/utils.dart';
import 'package:tap_timer_challenge/views/home_screen/home_screen.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Future.delayed(
      3.0.seconds,
      () {
        Get.offAll(() => const HomeScreen());
      },
    );
    super.onInit();
  }
}
