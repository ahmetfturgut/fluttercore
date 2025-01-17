import 'package:flutter/material.dart';

mixin ServiceHelper {
  void showMessage(GlobalKey<ScaffoldState> scaffoldKey, [String? message]) {
    if (scaffoldKey.currentContext != null) {
      final displayMessage = message ?? 'An unknown error occurred.';
      ScaffoldMessenger.of(scaffoldKey.currentContext!).showSnackBar(
        SnackBar(content: Text(displayMessage)),
      );
    }
  }
}
