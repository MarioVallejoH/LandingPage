import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:landing_portfolio/src/config/router/router.dart';
import 'package:landing_portfolio/src/presentation/state/locale_provider.dart';

void main() {
  Flurorouter.configureRoutes();
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Flurorouter.home,
      locale: ref.watch(localeProvider),
      onGenerateRoute: Flurorouter.router.generator,
    );
  }
}
