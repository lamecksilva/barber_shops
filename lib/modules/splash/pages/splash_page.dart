import 'package:barber_shops/modules/splash/controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 32,
          ),
          child: Obx(
            () => AnimatedOpacity(
              opacity: controller.opacity,
              duration: const Duration(
                milliseconds: 200,
              ),
              child: SvgPicture.asset(
                'assets/images/barber.svg',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
