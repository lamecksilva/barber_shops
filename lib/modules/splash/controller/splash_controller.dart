import 'dart:async';

import 'package:barber_shops/modules/home/routes/home_routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  SplashController();

  final RxDouble _opacity = 0.0.obs;

  double get opacity => _opacity.value;

  @override
  void onInit() async {
    transitOpacity();
    await connectivityStatus();

    super.onInit();
  }

  Future<void> checkAppStatus() async {
    await 1.delay();

    Get.offAllNamed(HomeRoutes.HOME_PAGE);
  }

  void transitOpacity() {
    Timer.periodic(const Duration(milliseconds: 400), (timer) {
      if (_opacity.value < 1.0) {
        _opacity.value++;
      }
    });
  }

  Future<void> connectivityStatus() async {
    await checkAppStatus();
  }
}
