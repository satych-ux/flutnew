import 'package:flutnew/di_service_locator/service_locator.dart';
import 'package:flutnew/routing/route_generator.dart';
import 'package:flutnew/utils/constants/named_routes.dart';
import 'package:flutter/material.dart';

void main() async {
  await setupServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigationService.navigatorKey,
      initialRoute: NamedRoutes.signupRoute,
      onGenerateRoute: RouteGenerator.generateRoute,
      title: 'Flutter Demo',
      theme: ThemeData(
        // Define the default brightness and colors.
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xff9b50a3), // Primary color
          primary: const Color(0xff8944ab), // Manually set primary color
          secondary: const Color(0x2ABD50B1),

          // Secondary color
        ),
        // Define the default font family.
        fontFamily:
            'Nexa', // Set a global font. Replace 'Roboto' with your desired font.
        useMaterial3: true,
      ),
    );
  }
}
