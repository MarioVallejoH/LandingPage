import 'package:flutter/material.dart';
import 'package:landing_portfolio/src/presentation/views/views.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _HomeBody(),
          Positioned(
            top: 20,
            right: 20,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu),
            ),
          )
        ],
      ),
    );
  }
}

/// Body shown on Home View
class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      children: [
        const HomeView(),
        Container(
          color: Colors.red,
        )
      ],
    );
  }
}
