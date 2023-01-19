import 'package:barber_shops/modules/establishment/bindings/establishment_detail.dart';
import 'package:barber_shops/modules/establishment/pages/establishment_detail_page.dart';
import 'package:barber_shops/modules/establishment/routes/establishment_routes.dart';
import 'package:get/route_manager.dart';

class EstablishmentRoutesPage {
  static final List<GetPage> ROUTES = <GetPage>[
    GetPage(
      name: EstablishmentRoutes.ESTABLISHMENT_DETAILS,
      page: () => const EstablishmentDetailPage(),
      bindings: [EstablishmentDetailBinding()],
    ),
  ];
}
