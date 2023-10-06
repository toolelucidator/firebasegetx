import 'package:firebasegetx/src/ui/splash/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});
  @override
  Widget build(BuildContext context) {
    final SplashController splashController = Get.find<SplashController>();
    return Scaffold(
      body: Center(
        child: Obx(() {
          if (splashController.loading) {
            return const CircularProgressIndicator();
          } else {
            return const Text('Splash');
          }
        }),
      ),
    );
  }
}
