import 'dart:io';

import 'package:flutnew/services/navigation_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// This Dart file defines the [AppNavigationServiceImpl] class which extends the abstract class [NavigationService]. The purpose of this class is to implement the navigation logic for a Flutter app.
///
/// The [AppNavigationServiceImpl] class overrides several methods that are defined in the [NavigationService] class. Below is a brief description of each method:
///
/// - getCurrentRoute: This method returns the name of the current route in the app's navigation stack.
/// - pushScreen: This method pushes a new screen onto the app's navigation stack. It takes a routeName parameter that specifies the name of the route to push, and an optional arguments parameter that can be used to pass data to the new screen. If the makeHapticFeedback parameter is set to true, it will trigger haptic feedback when the screen is pushed.
/// - pushScreensAndReplaceFirst: This method pushes multiple screens onto the app's navigation stack and replaces the first screen. It takes a list of routeNames that specify the names of the routes to push, and a required list of arguments that can be used to pass data to each screen.
/// - popAndPushScreen: This method pops the current screen off the navigation stack and then pushes a new screen onto the stack. It takes a routeName parameter that specifies the name of the route to push, and an optional arguments parameter that can be used to pass data to the new screen.
/// - pushReplacementScreen: This method replaces the current screen in the navigation stack with a new screen. It takes a routeName parameter that specifies the name of the route to push, and an optional arguments parameter that can be used to pass data to the new screen.
/// - popAndPushReplacement: This method pops the current screen off the navigation stack and then replaces it with a new screen. It takes a routeName parameter that specifies the name of the route to push, and an optional arguments parameter that can be used to pass data to the new screen.
/// - removeAllAndPush: This method removes all screens from the navigation stack up to a specified screen and then pushes a new screen onto the stack. It takes a routeName parameter that specifies the name of the route to push, a tillRoute parameter that specifies the name of the route up to which screens should be removed, and an optional arguments parameter that can be used to pass data to the new screen.
/// - pushDialog: This method displays a dialog on the screen. It takes a dialog parameter that specifies the widget to display, and an optional isDismissible parameter that controls whether the dialog can be dismissed.
/// - showSnackBar: This method displays a snack bar on the screen. It takes a message parameter that specifies the text to display, and an optional duration parameter that controls how long the snack bar is displayed.

class AppNavigationServiceImpl extends NavigationService {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  String? getCurrentRoute() {
    return ModalRoute.of(navigatorKey.currentState!.context)?.settings.name;
  }

  @override
  Future<dynamic> pushScreen(
    String routeName, {
    dynamic arguments,
    bool makeHapticFeedback = false,
  }) {
    if (makeHapticFeedback) {
      HapticFeedback.selectionClick();
    }
    return navigatorKey.currentState!
        .pushNamed(routeName, arguments: arguments);
  }

  @override
  void pushScreensAndReplaceFirst(
    List<String> routeNames, {
    required List<dynamic> arguments,
  }) {
    for (int i = 0; i < routeNames.length; i++) {
      if (i == 0) {
        pushReplacementScreen(routeNames[i], arguments: arguments[i]);
      } else {
        pushScreen(routeNames[i], arguments: arguments[i]);
      }
    }
  }

  @override
  Future<dynamic> popAndPushScreen(String routeName, {dynamic arguments}) {
    navigatorKey.currentState!.pop();
    return pushScreen(routeName, arguments: arguments);
  }

  @override
  Future<dynamic> pushReplacementScreen(String routeName, {dynamic arguments}) {
    return navigatorKey.currentState!
        .pushReplacementNamed(routeName, arguments: arguments);
  }

  @override
  Future<dynamic> popAndPushReplacement(String routeName, {dynamic arguments}) {
    navigatorKey.currentState!.pop();
    return pushReplacementScreen(routeName, arguments: arguments);
  }

  @override
  Future<dynamic> removeAllAndPush(
    String routeName,
    String tillRoute, {
    dynamic arguments,
  }) {
    return navigatorKey.currentState!.pushNamedAndRemoveUntil(
      routeName,
      ModalRoute.withName(tillRoute),
      arguments: arguments,
    );
  }

  @override
  Future<dynamic> pushDialog(Widget dialog, {bool isDismissible = false}) {
    return Platform.isAndroid
        ? showDialog(
            context: navigatorKey.currentContext!,
            barrierDismissible: isDismissible,
            builder: (BuildContext context) {
              return dialog;
            },
          )
        : showCupertinoDialog(
            context: navigatorKey.currentContext!,
            barrierDismissible: isDismissible,
            builder: (BuildContext context) {
              return dialog;
            },
          );
  }

  @override
  void showSnackBar(
    String message, {
    Duration duration = const Duration(seconds: 1),
  }) {
    ///In case of exception, if message is empty or null, it concluding as [Exception]
    ///By that reason, handled condition for Exception
    if (message.isNotEmpty && message != 'Exception') {
      ScaffoldMessenger.of(navigatorKey.currentContext!).showSnackBar(
        SnackBar(
          behavior: SnackBarBehavior.floating,
          duration: duration,
          content: Text(message),
        ),
      );
    }
  }

  Future<void> pop({dynamic sendDataBack, bool changeColor = true}) async {
    HapticFeedback.selectionClick();
    return navigatorKey.currentState!.pop(sendDataBack);
  }

  void popUntil(String route) {
    navigatorKey.currentState!.popUntil(ModalRoute.withName(route));
    return;
  }

  @override
  Future popAllAndPush(String routeName, {arguments}) {
    return navigatorKey.currentState!.pushNamedAndRemoveUntil(
      routeName,
      (Route<dynamic> route) => false,
      arguments: arguments,
    );
  }
}
