import 'package:fluro/fluro.dart';
import 'package:landing_portfolio/src/config/router/route_handlers.dart';

class Flurorouter {
  static final router = FluroRouter();

  static const String home = '/home';
  static const String page = '/:page';

  static void configureRoutes() {
    router.define(page, handler: RouteHandlers.homeHandler);

    // 404 Not Found
    router.notFoundHandler = RouteHandlers.notFoundHandler;
  }
}
