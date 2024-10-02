import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:landing_portfolio/src/presentation/pages/pages.dart';

class RouteHandlers {
  static final homeHandler = Handler(handlerFunc: (_, params) {
    return const HomePage();
  });

  /// 404 Not Found handler
  static final notFoundHandler = Handler(handlerFunc: (_, params) {
    return Container(
      color: Colors.red,
    );
  });
}
