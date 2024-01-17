import 'package:flutter/material.dart';
import 'package:gc_timer/pages/add_timer/add_timer_page.dart';
import 'package:gc_timer/styles/style.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class HomeController extends GetxController {
  add(BuildContext context) {
    final Style style = Style(context);
    showModalBottomSheet(
        context: context,
        builder: (_) => const AddTimerPage(),
        constraints: BoxConstraints(
          maxWidth: style.mediaWidth,
        ),
        backgroundColor: Colors.transparent,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))));
  }
}
