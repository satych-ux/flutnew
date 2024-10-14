import 'package:flutter/material.dart';

abstract class NavigationService {
  String? getCurrentRoute();

  Future<dynamic> pushScreen(
    String routeName, {
    dynamic arguments,
    bool makeHapticFeedback = false,
  });

  void pushScreensAndReplaceFirst(
    List<String> routeNames, {
    required List<dynamic> arguments,
  });

  Future<dynamic> popAndPushScreen(String routeName, {dynamic arguments});

  Future<dynamic> pushReplacementScreen(String routeName, {dynamic arguments});

  Future<dynamic> popAndPushReplacement(String routeName, {dynamic arguments});

  Future<dynamic> removeAllAndPush(
    String routeName,
    String tillRoute, {
    dynamic arguments,
  });

  void pushDialog(Widget dialog);

  void showSnackBar(
    String message, {
    Duration duration = const Duration(seconds: 2),
  });

  Future<dynamic> popAllAndPush(
    String routeName, {
    dynamic arguments,
  });

  Future<void> pop();
}
