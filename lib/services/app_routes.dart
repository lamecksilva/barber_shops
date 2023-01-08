import 'package:barber_shops/modules/home/routes/home_routes_page.dart';
import 'package:barber_shops/modules/splash/routes/splash_routes_page.dart';
import 'package:get/route_manager.dart';

class AppRoutes {
  static final List<GetPage> ROUTES = <GetPage>[
    ...HomeRoutesPage.ROUTES,
    ...SplashRoutesPage.ROUTES
  ];
}
