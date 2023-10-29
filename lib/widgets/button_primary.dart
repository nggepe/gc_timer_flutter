import 'package:flutter/material.dart';
import 'package:gc_timer/styles/style.dart';

class ButtonPrimary extends StatelessWidget {
  final void Function()? onPressed;
  const ButtonPrimary({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    final style = Style(context);
    return Center(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(
              color: style.primaryBg200,
              style: BorderStyle.solid,
              width: 3,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(50))),
        child: TextButton(
          onPressed: onPressed,
          style: ButtonStyle(
            minimumSize: MaterialStateProperty.resolveWith(
                (states) => const Size(80, 80)),
            backgroundColor:
                MaterialStateProperty.resolveWith((states) => style.primaryBg),
          ),
          child: const Icon(
            Icons.add,
            color: Colors.white,
            size: 40,
          ),
        ),
      ),
    );
  }
}
