import 'package:flutter/material.dart';

abstract class AppButtonStyle {
  static final ButtonStyle linkButton = ButtonStyle(
    foregroundColor: MaterialStateProperty.all(Color(0xff01b4e4)),
    padding: MaterialStatePropertyAll(EdgeInsets.zero),
    shape: MaterialStateProperty.all(
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
    ),
  );
}
