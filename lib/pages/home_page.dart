import 'package:flutter/material.dart';
import 'package:gc_timer/styles/style.dart';
import 'package:gc_timer/widgets/bottom_nav.dart';
import 'package:gc_timer/widgets/button_primary.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final style = Style(context);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: style.primaryBgGradient),
        child: Stack(children: [
          const Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: BottomNav(),
          ),
          Positioned(
            bottom: 120,
            left: 0,
            right: 0,
            child: ButtonPrimary(onPressed: () {}),
          ),
        ]),
      ),
    );
  }
}
