import 'package:barber_shops/modules/establishment/controller/establishment_detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EstablishmentDetailPage extends GetView<EstablishmentDetailController> {
  const EstablishmentDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Estabelecimento'),
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
          ),
          child: Text(
            'Detalhes do Estabelecimento ${controller.establishmentId}',
          ),
        ),
      ),
    );
  }
}
