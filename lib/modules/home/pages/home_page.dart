import 'package:barber_shops/modules/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Barber Shops'),
      ),
      body: const SafeArea(
        child: Text('HomeController'),
      ),
    );
  }
}
