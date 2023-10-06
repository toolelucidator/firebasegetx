import 'package:firebasegetx/src/data/firebase/auth_firebase.dart';
import 'package:firebasegetx/src/ui/routes/route_names.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignInController extends GetxController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  void signIn() {
    Get.showOverlay(
        asyncFunction: () async {
          try {
            await const AuthFirebase().signInWithEmail(
              emailController.text.trim(),
              passwordController.text.trim(),
            );
            Get.offNamed(RouteNames.home);
          } on FirebaseAuthException catch (e) {
            Get.showSnackbar(
              GetBar(
                message: e.message,
                duration: const Duration(seconds: 2),
              ),
            );
          }
        }
    );
  }
}

