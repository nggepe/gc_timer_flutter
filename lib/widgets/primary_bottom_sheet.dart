import 'package:flutter/material.dart';
import 'package:gc_timer/styles/style.dart';

class PrimaryBottomSheet extends StatelessWidget {
  final Widget? child;
  final EdgeInsetsGeometry? padding;
  const PrimaryBottomSheet({
    this.child,
    this.padding,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final style = Style(context);
    return Container(
      height: 400,
      width: style.mediaWidth,
      padding: padding,
      constraints: BoxConstraints(maxWidth: style.mediaWidth),
      decoration: BoxDecoration(
          gradient: style.primaryBgGradient,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      child: child,
    );
  }
}
