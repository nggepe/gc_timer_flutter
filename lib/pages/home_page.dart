import 'package:flutter/material.dart';
import 'package:gc_timer/styles/style.dart';
import 'package:gc_timer/widgets/bottom_nav.dart';

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
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(
                      color: style.primaryBg200,
                      style: BorderStyle.solid,
                      width: 7,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(50))),
                child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.resolveWith(
                        (states) => const Size(80, 80)),
                    backgroundColor: MaterialStateProperty.resolveWith(
                        (states) => style.primaryBg),
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
