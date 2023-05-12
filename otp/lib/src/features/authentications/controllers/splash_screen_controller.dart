import 'package:get/get.dart';
import 'package:otp/src/features/authentications/screens/welcome/welcome_screen.dart';

class SplashScreenController extends GetxController {
  static SplashScreenController get find => Get.find();
  RxBool animate = false.obs;

  Future startAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));

    animate.value = true;

    await Future.delayed(Duration(milliseconds: 5000));
    Get.to(
      WelcomeScreen(),
    );
  }
}
