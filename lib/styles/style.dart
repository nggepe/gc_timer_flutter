import 'package:flutter/material.dart';

class Style {
  final BuildContext context;
  Style(this.context);

  Color get primaryBg => const Color(0XFF575C93);
  Color get primaryBg200 => const Color(0XFF3F4474);

  LinearGradient get primaryBgGradient => const LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [Color(0XFF575C93), Color(0XFF3F4474)]);
}
