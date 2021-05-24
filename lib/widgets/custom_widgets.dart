import 'package:flutter/material.dart';

class CustomWidgets {
  static createAppbar({required String title, List<Widget>? actions}) {
    return AppBar(
      centerTitle: true,
      title: Text(title),
      actions: actions,
    );
  }
}
