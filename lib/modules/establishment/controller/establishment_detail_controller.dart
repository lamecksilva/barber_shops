import 'dart:convert';

import 'package:barber_shops/services/my_api_client.dart';
import 'package:get/get.dart';

class EstablishmentDetailController extends GetxController {
  EstablishmentDetailController();

  final String establishmentId = Get.arguments;

  final MyApiClient apiClient = MyApiClient();
  Rxn<List<dynamic>> users = Rxn<List<dynamic>>();

  @override
  void onInit() {
    super.onInit();
    fetchUsers();
  }

  Future<void> fetchUsers() async {
    final response = await apiClient.getUsers();
    if (response.status.hasError) {
      // Tratar erro
      print('Ocorreu um erro');
    } else {
      users.value = jsonDecode(response.body);
    }
  }
}
