import 'package:barber_shops/modules/splash/bindings/splash_bindings.dart';
import 'package:barber_shops/modules/splash/pages/splash_page.dart';
import 'package:barber_shops/modules/splash/routes/splash_routes.dart';
import 'package:get/route_manager.dart';

class SplashRoutesPage {
  static final List<GetPage> ROUTES = <GetPage>[
    GetPage(
      name: SplashRoutes.SPLASH,
      page: () => const SplashPage(),
      bindings: [SplashBinding()],
    ),
  ];
}
