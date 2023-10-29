import 'package:flutter/material.dart';
import 'package:gc_timer/styles/style.dart';
import 'package:gc_timer/widgets/primary_bottom_sheet.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class HomeController extends GetxController {
  add(BuildContext context) {
    final Style style = Style(context);
    showModalBottomSheet(
        context: context,
        builder: (_) => const PrimaryBottomSheet(),
        constraints: BoxConstraints(
          maxWidth: style.mediaWidth,
        ),
        backgroundColor: Colors.transparent,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))));
  }
}
