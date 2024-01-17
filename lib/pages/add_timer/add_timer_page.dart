import 'package:flutter/material.dart';
import 'package:gc_timer/pages/add_timer/add_timer_controller.dart';
import 'package:gc_timer/styles/style.dart';
import 'package:gc_timer/widgets/primary_bottom_sheet.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:simple_grid/simple_grid.dart';

class AddTimerPage extends StatelessWidget {
  const AddTimerPage({super.key});

  @override
  Widget build(BuildContext context) {
    final AddTimerController controller = Get.put(AddTimerController());
    final Style style = Style(context);
    return GetBuilder<AddTimerController>(builder: (_) {
      return PrimaryBottomSheet(
        padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
        child: SpGrid(children: [
          SpGridItem(
            xs: 12,
            md: 6,
            lg: 4,
            xl: 3,
            child: TextField(
              controller: controller.labelController,
              style: TextStyle(color: Colors.white),
              cursorColor: Colors.white,
              cursorHeight: 16,
              decoration: InputDecoration(
                label: Text(
                  "Label",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          )
        ]),
      );
    });
  }
}
