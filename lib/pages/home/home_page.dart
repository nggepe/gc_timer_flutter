import 'package:flutter/material.dart';
import 'package:gc_timer/pages/home/home_controller.dart';
import 'package:gc_timer/styles/style.dart';
import 'package:gc_timer/widgets/bottom_nav.dart';
import 'package:gc_timer/widgets/button_primary.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put(HomeController());
    final style = Style(context);
    return GetBuilder<HomeController>(builder: (_) {
      return Scaffold(
        body: Container(
          decoration: BoxDecoration(gradient: style.primaryBgGradient),
          height: style.mediaHeight,
          width: style.mediaWidth,
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
              child: ButtonPrimary(onPressed: () => controller.add(context)),
            ),
          ]),
        ),
      );
    });
  }
}
