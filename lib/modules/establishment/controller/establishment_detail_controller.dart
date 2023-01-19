import 'package:get/get.dart';

class EstablishmentDetailController extends GetxController {
  EstablishmentDetailController();

  final String establishmentId = Get.arguments;

  final _obj = ''.obs;
  set obj(value) => _obj.value = value;
  get obj => _obj.value;

  @override
  void onInit() {
    // TODO: implement onInit
    print(Get.arguments);
    print(establishmentId);

    super.onInit();
  }
}
