import 'package:barber_shops/modules/establishment/controller/establishment_detail_controller.dart';
import 'package:get/get.dart';

class EstablishmentDetailBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EstablishmentDetailController>(
      () => EstablishmentDetailController(),
    );
  }
}
