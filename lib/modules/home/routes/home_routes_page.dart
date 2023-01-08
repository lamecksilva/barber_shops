import 'package:barber_shops/modules/home/bindings/home_bindings.dart';
import 'package:barber_shops/modules/home/pages/home_page.dart';
import 'package:barber_shops/modules/home/routes/home_routes.dart';
import 'package:get/route_manager.dart';

class HomeRoutesPage {
  static final List<GetPage> ROUTES = <GetPage>[
    GetPage(
      name: HomeRoutes.HOME_PAGE,
      page: () => const HomePage(),
      bindings: [HomeBinding()],
    ),
  ];
}
