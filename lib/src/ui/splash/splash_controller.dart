import 'package:get/get.dart';

class SplashController extends GetxController {
  //SplashController(required this.authController);

  final RxBool _isLoading = RxBool(true);

  @override
  void onInit() {
    super.onInit();
    _init();
  }

  Future<void> _init() async {
    await Future.delayed(const Duration(seconds: 5));
    _isLoading.value = false;
  }
  bool get loading => _isLoading.value;

}
